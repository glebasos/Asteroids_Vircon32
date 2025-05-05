// include Vircon libraries
#include "video.h"
#include "math.h"
#include "time.h"
#include "input.h"
#include "misc.h"
#include "draw_primitives.h"


#define SCREEN_WIDTH  640
#define SCREEN_HEIGHT 360


struct Ship
{
    float x, y;        // Position
    float angle;       // Direction in radians
    float velocityX;   // Current velocity
    float velocityY;
};

// Structure to hold projectile information
struct Projectile
{
    float x, y;
    float velocityX, velocityY;
    bool active;
};

#define MAX_PROJECTILES 20
Projectile[MAX_PROJECTILES] projectiles;

struct Asteroid
{
    float x, y;                // Position of the asteroid
    float speedX, speedY;      // Speed of the asteroid
    int shapeType;             // Type of the asteroid shape
    bool active;               // Whether the asteroid is active
    int size;
};

#define NUM_ASTEROID_SHAPES 5

// Shape definitions (manual vertices for 5 asteroid shapes)
int[NUM_ASTEROID_SHAPES][5][2] asteroidShapes = {
    {{-10, -10}, {10, -10}, {10, 10}, {-10, 10}, {0, 0}}, // Square-like
    {{-15, -5}, {5, -15}, {15, 5}, {-5, 15}, {-15, 5}},    // Rough triangle
    {{-20, -10}, {-10, -20}, {0, -15}, {10, -20}, {20, -10}}, // Jagged triangle
    {{-12, -8}, {10, -8}, {10, 8}, {-12, 8}, {0, -12}},     // Rectangle-like
    {{-10, -12}, {12, -8}, {6, 12}, {-6, 12}, {-12, -8}}     // Odd shape
};

// Array to store all asteroids
//#define MAX_ASTEROIDS 5
//Asteroid[MAX_ASTEROIDS] asteroids;

#define MAX_BIG_ASTEROIDS 10
#define MAX_MEDIUM_ASTEROIDS 20
#define MAX_SMALL_ASTEROIDS 40

Asteroid[MAX_BIG_ASTEROIDS] asteroids;
Asteroid[MAX_BIG_ASTEROIDS] bigAsteroids;
Asteroid[MAX_MEDIUM_ASTEROIDS] mediumAsteroids;
Asteroid[MAX_SMALL_ASTEROIDS] smallAsteroids;

// Function to initialize an asteroid
void init_asteroid(int i, int size)
{
    asteroids[i].x = rand() % SCREEN_WIDTH;
    asteroids[i].y = rand() % SCREEN_HEIGHT;

    if (rand() % 2 == 0)
        asteroids[i].speedX = (rand() % 3 + 1);
    else
        asteroids[i].speedX = -(rand() % 3 + 1);

    if (rand() % 2 == 0)
        asteroids[i].speedY = (rand() % 3 + 1);
    else
        asteroids[i].speedY = -(rand() % 3 + 1);

    asteroids[i].size = size;

    // Assign shape based on size
    if (size == 2)  // Big
        asteroids[i].shapeType = rand() % 2;  // 0 or 1
    else if (size == 1)  // Medium
        asteroids[i].shapeType = 2 + (rand() % 2);  // 2 or 3
    else  // Small
        asteroids[i].shapeType = 4;  // Only one small shape

    asteroids[i].active = true;
}

void init_asteroid(Asteroid* a, int size)
{
    a->active = true;
    a->size = size;
    // You can set more random values here if you want
}


// Function to update the position of an asteroid
void update_asteroid(int i)
{
    if (asteroids[i].active) {
        asteroids[i].x += asteroids[i].speedX;
        asteroids[i].y += asteroids[i].speedY;

        // Wrap around screen
        if (asteroids[i].x < 0) asteroids[i].x += SCREEN_WIDTH;
        if (asteroids[i].x >= SCREEN_WIDTH) asteroids[i].x -= SCREEN_WIDTH;
        if (asteroids[i].y < 0) asteroids[i].y += SCREEN_HEIGHT;
        if (asteroids[i].y >= SCREEN_HEIGHT) asteroids[i].y -= SCREEN_HEIGHT;
    }
}

// Function to draw an asteroid
void draw_asteroid(int i)
{
    if (asteroids[i].active) {
        int shapeType = asteroids[i].shapeType;

        // Draw the lines of the asteroid based on its shape
        for (int j = 0; j < 5; j++) {
            int x1 = asteroids[i].x + asteroidShapes[shapeType][j][0];
            int y1 = asteroids[i].y + asteroidShapes[shapeType][j][1];
            int x2 = asteroids[i].x + asteroidShapes[shapeType][(j + 1) % 5][0];
            int y2 = asteroids[i].y + asteroidShapes[shapeType][(j + 1) % 5][1];

            // Draw the line (use `draw_line` from your existing code)
            draw_line(x1, y1, x2, y2);
        }
    }
}

void spawn_medium(int x, int y)
{
    for (int i = 0; i < MAX_MEDIUM_ASTEROIDS; i++)
    {
        if (!mediumAsteroids[i].active)
        {
            init_asteroid(&mediumAsteroids[i], 1);  // size = 1 (medium)
            mediumAsteroids[i].x = x;
            mediumAsteroids[i].y = y;
            mediumAsteroids[i].speedX = (rand() % 5 - 2);
            mediumAsteroids[i].speedY = (rand() % 5 - 2);
            break;
        }
    }
}

void spawn_small(int x, int y)
{
    for (int i = 0; i < MAX_SMALL_ASTEROIDS; i++)
    {
        if (!smallAsteroids[i].active)
        {
            init_asteroid(&smallAsteroids[i], 0);  // size = 0 (small)
            smallAsteroids[i].x = x;
            smallAsteroids[i].y = y;
            smallAsteroids[i].speedX = (rand() % 5 - 2);
            smallAsteroids[i].speedY = (rand() % 5 - 2);
            break;
        }
    }
}

void destroy_asteroid(int asteroidIndex)
{
    int currentSize = asteroids[asteroidIndex].size;

    if (currentSize > 0)
    {
        // Try to spawn 2 smaller asteroids
        for (int i = 0; i < MAX_ASTEROIDS; i++)
        {
            if (!asteroids[i].active)
            {
                init_asteroid(i, currentSize - 1);
                asteroids[i].x = asteroids[asteroidIndex].x;
                asteroids[i].y = asteroids[asteroidIndex].y;

                // Give them a slight push in random direction
                asteroids[i].speedX = (rand() % 5 - 2);  // -2, -1, 0, 1, 2
                asteroids[i].speedY = (rand() % 5 - 2);
                break;  // Only one asteroid per loop, will create two
            }
        }

        for (int i = 0; i < MAX_ASTEROIDS; i++)
        {
            if (!asteroids[i].active)
            {
                init_asteroid(i, currentSize - 1);
                asteroids[i].x = asteroids[asteroidIndex].x;
                asteroids[i].y = asteroids[asteroidIndex].y;
                asteroids[i].speedX = (rand() % 5 - 2);
                asteroids[i].speedY = (rand() % 5 - 2);
                break;
            }
        }
    }

    // Deactivate the original asteroid
    asteroids[asteroidIndex].active = false;
}

// Function to check if a bullet has collided with an asteroid
bool check_bullet_asteroid_collision(Projectile *bullet, Asteroid *asteroid)
{
    // Simple distance check (considering a radius for both the bullet and asteroid)
    float distanceX = bullet->x - asteroid->x;
    float distanceY = bullet->y - asteroid->y;
    float distance = sqrt(distanceX * distanceX + distanceY * distanceY);

    // If the distance is small enough (within a threshold), we consider it a collision
    // You can adjust the threshold based on the size of the asteroid and bullet
    float collisionThreshold = 20.0;
    if (distance < collisionThreshold) {
        return true;  // Collision detected
    }
    return false;  // No collision
}

// Function to update bullets and check for collisions with asteroids
void update_bullets_and_asteroids()
{
    // Loop through all bullets
    for (int i = 0; i < MAX_PROJECTILES; i++)
    {
        if (projectiles[i].active)  // If the bullet is active
        {
            // Update bullet position
            projectiles[i].x += projectiles[i].velocityX;
            projectiles[i].y += projectiles[i].velocityY;

            // Check for collisions with asteroids
            for (int j = 0; j < MAX_ASTEROIDS; j++)
            {
                if (asteroids[j].active && check_bullet_asteroid_collision(&projectiles[i], &asteroids[j]))
                {
                    destroy_asteroid(j);  // Destroy asteroid
                    projectiles[i].active = false;  // Deactivate bullet
                    break;  // Stop checking further once the bullet hits an asteroid
                }
            }
        }
    }
}



//int score = 0;
//int maxScore = 0;

//int[12] numberBuffer;

void int_to_string(int value, int* buffer)
{
    // Handle 0 as a special case
    if (value == 0)
    {
        buffer[0] = '0';
        buffer[1] = 0;
        return;
    }

    // Handle negative numbers
    int isNegative = 0;
    if (value < 0)
    {
        isNegative = 1;
        value = -value;
    }

    int[10] digits; // max 10 digits
    int length = 0;

    // Extract digits in reverse order
    while (value > 0)
    {
        digits[length++] = '0' + (value % 10);
        value /= 10;
    }

    int i = 0;

    // Add minus sign if needed
    if (isNegative)
        buffer[i++] = '-';

    // Copy digits in correct order
    for (int j = length - 1; j >= 0; j--)
        buffer[i++] = digits[j];

    buffer[i] = 0; // null terminator
}

float projectileOffset = 20.0;
// Function to fire a projectile
void fire_projectile(float shipX, float shipY, float shipAngle)
{
    // Find the first inactive projectile slot
    for (int i = 0; i < MAX_PROJECTILES; i++)
    {
        if (!projectiles[i].active)
        {
            // Calculate new starting position based on ship's angle and offset
            projectiles[i].x = shipX + projectileOffset * cos(shipAngle);
            projectiles[i].y = shipY + projectileOffset * sin(shipAngle);

            // Initialize the projectile's velocity
            projectiles[i].velocityX = 5.0 * cos(shipAngle);
            projectiles[i].velocityY = 5.0 * sin(shipAngle);
            projectiles[i].active = true;
            break;
        }
    }
}

// Function to update projectiles
void update_projectiles()
{
    for (int i = 0; i < MAX_PROJECTILES; i++)
    {
        if (projectiles[i].active)
        {
            // Move the projectile
            projectiles[i].x += projectiles[i].velocityX;
            projectiles[i].y += projectiles[i].velocityY;

            // Check if the projectile is off-screen
            if (projectiles[i].x < 0 || projectiles[i].x >= SCREEN_WIDTH || projectiles[i].y < 0 || projectiles[i].y >= SCREEN_HEIGHT)
            {
                projectiles[i].active = false;  // Deactivate the projectile
            }

            // Draw the projectile
            draw_line((int)projectiles[i].x, (int)projectiles[i].y, (int)(projectiles[i].x - projectiles[i].velocityX), (int)(projectiles[i].y - projectiles[i].velocityY));
        }
    }
}

void draw_ship(int centerX, int centerY, float angle, bool thrusting, int flameFrame)
{
    // === Ship settings ===
    int shipLength = 15;
    int shipWingLength = 8;
    float wingAngle = pi / 4;   // 45 degrees

    // === Flame settings ===
    int flameOffset = -20;  // Distance from ship's rear for the flame

    // Tip position (front of ship)
    int tipX = centerX + shipLength * cos(angle);
    int tipY = centerY + shipLength * sin(angle);

    // Rear position (thrust point)
    int rearX = centerX - shipLength * cos(angle);
    int rearY = centerY - shipLength * sin(angle);

    // Wings
    int leftX = centerX + shipWingLength * cos(angle + wingAngle);
    int leftY = centerY + shipWingLength * sin(angle + wingAngle);

    int rightX = centerX + shipWingLength * cos(angle - wingAngle);
    int rightY = centerY + shipWingLength * sin(angle - wingAngle);

    // Draw ship lines
    draw_line(leftX, leftY, tipX, tipY);
    draw_line(rightX, rightY, tipX, tipY);

    // Draw flames if thrusting
    if (thrusting)
    {
        // Flame base should come from the rear, considering flame offset
        int flameBaseX = rearX - flameOffset * cos(angle);
        int flameBaseY = rearY - flameOffset * sin(angle);

        // Animate flames using flameFrame
        float flameSpread = pi / 8; // ~22 degrees
        int flameLength;

        // Different lengths for flame frames (cycle)
        switch (flameFrame)
        {
            case 0: flameLength = 3; break;
            case 1: flameLength = 5; break;
            case 2: flameLength = 4; break;
            case 3: flameLength = 6; break;
            default: flameLength = 4; break;
        }

        // Flame 1
        int flame1X = flameBaseX - flameLength * cos(angle + flameSpread);
        int flame1Y = flameBaseY - flameLength * sin(angle + flameSpread);

        // Flame 2
        int flame2X = flameBaseX - flameLength * cos(angle - flameSpread);
        int flame2Y = flameBaseY - flameLength * sin(angle - flameSpread);

        draw_line(flameBaseX, flameBaseY, flame1X, flame1Y);
        draw_line(flameBaseX, flameBaseY, flame2X, flame2Y);
    }
}



void main( void )
{

    Ship playerShip = { SCREEN_WIDTH/2, SCREEN_HEIGHT/2, 0.0, 0.0, 0.0 };

    float rotationSpeed = 3.0;  // radians per second
    float thrustPower = 1.0;    // pixels per second square
    float friction = 0.98;      // friction factor
    float deltaT = 1.0/60.0; //DeltaTime
    bool isThrusting = false;
    int flameFrameCounter = 0;

    // Initialize asteroids
    for (int i = 0; i < MAX_ASTEROIDS; i++)
    {
        init_asteroid(i, 2);  // Start with all asteroids as Big
    }

    while (true)
    {
        clear_screen(color_black);

        isThrusting = false;

		// Rotate ship
        if (gamepad_left() > 0)
            playerShip.angle -= rotationSpeed * (deltaT);

        if (gamepad_right() > 0)
            playerShip.angle += rotationSpeed * (deltaT);

        // Thrust forward
        if (gamepad_button_a() > 0)
        {
            playerShip.velocityX += thrustPower * cos(playerShip.angle) * (deltaT);
            playerShip.velocityY += thrustPower * sin(playerShip.angle) * (deltaT);
            isThrusting = true;
        }

        // Fire projectile
        if (gamepad_button_b() == 1)  // Assuming button B fires the projectile
        {
            fire_projectile(playerShip.x, playerShip.y, playerShip.angle);
        }


        // Update position
        playerShip.x += playerShip.velocityX;
        playerShip.y += playerShip.velocityY;

        // Apply friction
        playerShip.velocityX *= friction;
        playerShip.velocityY *= friction;

        // Wrap screen
        if (playerShip.x < 0) playerShip.x += SCREEN_WIDTH;
        if (playerShip.x >= SCREEN_WIDTH) playerShip.x -= SCREEN_WIDTH;
        if (playerShip.y < 0) playerShip.y += SCREEN_HEIGHT;
        if (playerShip.y >= SCREEN_HEIGHT) playerShip.y -= SCREEN_HEIGHT;

        // Update and draw asteroids
        for (int i = 0; i < MAX_ASTEROIDS; i++)
        {
            update_asteroid(i);
            draw_asteroid(i);
        }

        // Update flame animation
        flameFrameCounter = (flameFrameCounter + 1) % 4;

        // Draw ship
        draw_ship((int)playerShip.x, (int)playerShip.y, playerShip.angle, isThrusting, flameFrameCounter);

        // Update and draw projectiles
        update_projectiles();

        // Update bullets and check for asteroid collisions
        update_bullets_and_asteroids();

        end_frame();
    }

}



