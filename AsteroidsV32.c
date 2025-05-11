// include Vircon libraries
#include "video.h"
#include "math.h"
#include "time.h"
#include "input.h"
#include "misc.h"
#include "draw_primitives.h"


#define SCREEN_WIDTH  640
#define SCREEN_HEIGHT 360

#define SHIP_COLLISION_RADIUS 10
#define MIN_ASTEROID_RESPAWN_DISTANCE_FROM_SHIP 100.0

float ASTEROID_RADIUS_BIG = 15.0;    // For shapeType 0, 1
float ASTEROID_RADIUS_MEDIUM = 10.0; // For shapeType 2, 3
float ASTEROID_RADIUS_SMALL = 5.0;  // For shapeType 4

int score = 0;
int maxScore = 0;
int lives = 3;
bool isAlive = true;
int[12] numberBuffer; 

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
int[NUM_ASTEROID_SHAPES][12][2] asteroidShapes = {
    {{-20, 0}, {-10, 20}, {10, 20}, {20, 0}, {10, -20}, {-10, -20}}, // Hexagonal
    {{-20, 10}, {0, 20}, {10, 0}, {20, 0}, {0, -20}, {-10, -20}},    // Hex with cutout
    {{-15, 15}, {0, 10}, {15, 15}, {10, -10}, {0, -5}, {-10, -10}}, // Tie like
    {{0, 15}, {10, 5}, {20, 10}, {0, -10}, {-20, 10}, {-10, 5}},     // Lotus kinda
    {{-10, 0}, {-5, 10}, {5, 10}, {10, 0}, {5, -10}, {-5, -10}}     // Small hex
};

//{{-10, -10}, {10, -10}, {10, 10}, {-10, 10}, {0, 0}}, // Square-like
//{{-15, -5}, {5, -15}, {15, 5}, {-5, 15}, {-15, 5}},    // Rough triangle
//{{-20, -10}, {-10, -20}, {0, -15}, {10, -20}, {20, -10}}, // Jagged triangle
//{{-12, -8}, {10, -8}, {10, 8}, {-12, 8}, {0, -12}},     // Rectangle-like
//{{-10, -12}, {12, -8}, {6, 12}, {-6, 12}, {-12, -8}}     // Odd shape


#define MAX_BIG_ASTEROIDS 5
#define MAX_MEDIUM_ASTEROIDS 20
#define MAX_SMALL_ASTEROIDS 40

int bigAsteroidSpawnTimer = 0;
int BIG_ASTEROID_SPAWN_INTERVAL = 300; // Approx. 5 seconds at 60 FPS (300 frames)
int MAX_CONCURRENT_BIG_ASTEROIDS = 5;

Asteroid[MAX_BIG_ASTEROIDS] bigAsteroids;
Asteroid[MAX_MEDIUM_ASTEROIDS] mediumAsteroids;
Asteroid[MAX_SMALL_ASTEROIDS] smallAsteroids;


void init_asteroid(Asteroid* a, int size)
{
    a->active = true;
    a->size = size;

    if (rand() % 2 == 0)
        a->speedX = (rand() % 3 + 1);
    else
        a->speedX = -(rand() % 3 + 1);

    if (rand() % 2 == 0)
        a->speedY = (rand() % 3 + 1);
    else
        a->speedY = -(rand() % 3 + 1);
	
	if (a->speedX == 0) a->speedX = 1.0;
    if (a->speedY == 0) a->speedY = 1.0;

    //a->speedX = 0;
    //a->speedY = 0;

    // Set random spawn position, or you can assign it explicitly after init
    a->x = rand() % SCREEN_WIDTH;
    a->y = rand() % SCREEN_HEIGHT;

    //->x = SCREEN_WIDTH/2 + 40;
    //a->y = SCREEN_HEIGHT/2 + 40;

    // Assign shape based on size
    if (size == 2)  // Big
        a->shapeType = rand() % 2;  // 0 or 1
        //a->shapeType = 0;  // 0 or 1
    else if (size == 1)  // Medium
        a->shapeType = 2 + (rand() % 2);  // 2 or 3
    else  // Small
        a->shapeType = 4;  // Only one small shape
}

void spawn_big(int x, int y)
{
    for (int i = 0; i < MAX_BIG_ASTEROIDS; i++)
    {
        if (!bigAsteroids[i].active)
        {
            init_asteroid(&bigAsteroids[i], 2);  // 2 = big
            bigAsteroids[i].x = x;
            bigAsteroids[i].y = y;
            bigAsteroids[i].speedX = (rand() % 5 - 2);  if(bigAsteroids[i].speedX==0) bigAsteroids[i].speedX=1;
            bigAsteroids[i].speedY = (rand() % 5 - 2);	if(bigAsteroids[i].speedY==0) bigAsteroids[i].speedY=1;
            break;
        }
    }
}

void spawn_medium(int x, int y)
{
    for (int i = 0; i < MAX_MEDIUM_ASTEROIDS; i++)
    {
        if (!mediumAsteroids[i].active)
        {
            init_asteroid(&mediumAsteroids[i], 1);  // 1 = medium
            mediumAsteroids[i].x = x;
            mediumAsteroids[i].y = y;
            mediumAsteroids[i].speedX = (rand() % 5 - 2); if(mediumAsteroids[i].speedX==0) mediumAsteroids[i].speedX=1;
            mediumAsteroids[i].speedY = (rand() % 5 - 2); if(mediumAsteroids[i].speedY==0) mediumAsteroids[i].speedY=1;
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
            init_asteroid(&smallAsteroids[i], 0);  // 0 = small
            smallAsteroids[i].x = x;
            smallAsteroids[i].y = y;
            smallAsteroids[i].speedX = (rand() % 5 - 2); if(smallAsteroids[i].speedX==0) smallAsteroids[i].speedX=1;
            smallAsteroids[i].speedY = (rand() % 5 - 2); if(smallAsteroids[i].speedY==0) smallAsteroids[i].speedY=1;
            break;
        }
    }
}

// --- Destroy functions ---

void destroy_big_asteroid(int index)
{
    bigAsteroids[index].active = false;

    // Spawn two medium asteroids
    spawn_medium(bigAsteroids[index].x, bigAsteroids[index].y);
    spawn_medium(bigAsteroids[index].x, bigAsteroids[index].y);
}

void destroy_medium_asteroid(int index)
{
    mediumAsteroids[index].active = false;

    // Spawn two small asteroids
    spawn_small(mediumAsteroids[index].x, mediumAsteroids[index].y);
    spawn_small(mediumAsteroids[index].x, mediumAsteroids[index].y);
}

void destroy_small_asteroid(int index)
{
    smallAsteroids[index].active = false;
}

void update_asteroid(Asteroid* a)
{
    a->x += a->speedX;
    a->y += a->speedY;
    
    if (a->x < 0) a->x += SCREEN_WIDTH;
    if (a->x >= SCREEN_WIDTH) a->x -= SCREEN_WIDTH;
    if (a->y < 0) a->y += SCREEN_HEIGHT;
    if (a->y >= SCREEN_HEIGHT) a->y -= SCREEN_HEIGHT;
}


void draw_asteroid(Asteroid* a)
{
    if (!a->active) return;

    int shapeType = a->shapeType;  // Assuming shapeType is part of your struct
	
	int num_vertices = 6;

    // Draw the lines of the asteroid based on its shape
    for (int j = 0; j < num_vertices; j++) {
        int x1 = a->x + asteroidShapes[shapeType][j][0];
        int y1 = a->y + asteroidShapes[shapeType][j][1];

        // The next vertex index, wrapping around using num_vertices
        int next_vertex_index = (j + 1) % num_vertices;

        int x2 = a->x + asteroidShapes[shapeType][next_vertex_index][0];
        int y2 = a->y + asteroidShapes[shapeType][next_vertex_index][1];

        draw_line(x1, y1, x2, y2);

        draw_line(x1, y1, x2, y2);
    }
}

void draw_asteroids()
{
    for (int i = 0; i < MAX_BIG_ASTEROIDS; i++)
        if (bigAsteroids[i].active)
            draw_asteroid(&bigAsteroids[i]);

    for (int i = 0; i < MAX_MEDIUM_ASTEROIDS; i++)
        if (mediumAsteroids[i].active)
            draw_asteroid(&mediumAsteroids[i]);

    for (int i = 0; i < MAX_SMALL_ASTEROIDS; i++)
        if (smallAsteroids[i].active)
            draw_asteroid(&smallAsteroids[i]);
}


void destroy_asteroid(Asteroid* a)
{
    int currentSize = a->size;

    // Deactivate the original asteroid
    a->active = false;

    // If it's not the smallest size, spawn two smaller ones
    if (currentSize > 0)
    {
        Asteroid* pool = NULL;
        int maxCount = 0;

        if (currentSize == 2) {  // Big -> Medium
            pool = mediumAsteroids;
            maxCount = MAX_MEDIUM_ASTEROIDS;
        } else if (currentSize == 1) {  // Medium -> Small
            pool = smallAsteroids;
            maxCount = MAX_SMALL_ASTEROIDS;
        }

        if (pool != NULL)
        {
            int spawned = 0;
            for (int i = 0; i < maxCount && spawned < 2; i++)
            {
                if (!pool[i].active)
                {
                    init_asteroid(&pool[i], currentSize - 1);
                    pool[i].x = a->x;
                    pool[i].y = a->y;
                    pool[i].speedX = (rand() % 5 - 2);  // -2 to 2
                    pool[i].speedY = (rand() % 5 - 2);
                    spawned++;
                }
            }
        }
    }
}


// Function to check if a bullet has collided with an asteroid
bool check_bullet_asteroid_collision(Projectile *bullet, Asteroid *asteroid)
{
	if (!bullet || !asteroid || !bullet->active || !asteroid->active) return false;
    // Simple distance check (considering a radius for both the bullet and asteroid)
    float distanceX = bullet->x - asteroid->x;
    float distanceY = bullet->y - asteroid->y;
    float distance = sqrt(distanceX * distanceX + distanceY * distanceY);


    float collisionThreshold = 20.0;
    if (distance < collisionThreshold) {
        return true;
    }
    return false; 
}

// Function to update bullets and check for collisions with asteroids
/* void update_bullets_and_asteroids()
{
    for (int i = 0; i < MAX_PROJECTILES; i++)
    {
        if (projectiles[i].active)
        {
            // Update bullet position
            projectiles[i].x += projectiles[i].velocityX;
            projectiles[i].y += projectiles[i].velocityY;

            // Check collision with BIG asteroids
            for (int j = 0; j < MAX_BIG_ASTEROIDS; j++)
            {
                if (bigAsteroids[j].active && check_bullet_asteroid_collision(&projectiles[i], &bigAsteroids[j]))
                {
                    destroy_asteroid(&bigAsteroids[j]);
                    projectiles[i].active = false;
					score++;
                    break;
                }
            }

            // Check collision with MEDIUM asteroids
            for (int j = 0; j < MAX_MEDIUM_ASTEROIDS && projectiles[i].active; j++)
            {
                if (mediumAsteroids[j].active && check_bullet_asteroid_collision(&projectiles[i], &mediumAsteroids[j]))
                {
                    destroy_asteroid(&mediumAsteroids[j]);
                    projectiles[i].active = false;
					score++;
                    break;
                }
            }

            // Check collision with SMALL asteroids
            for (int j = 0; j < MAX_SMALL_ASTEROIDS && projectiles[i].active; j++)
            {
                if (smallAsteroids[j].active && check_bullet_asteroid_collision(&projectiles[i], &smallAsteroids[j]))
                {
                    destroy_asteroid(&smallAsteroids[j]);
                    projectiles[i].active = false;
					score++;
                    break;
                }
            }
        }
    }
} */
void update_bullets_and_asteroids()
{
    for (int i = 0; i < MAX_PROJECTILES; i++)
    {
        if (projectiles[i].active)
        {
            // Bullet movement is now in update_projectiles()
            // projectiles[i].x += projectiles[i].velocityX; // Moved
            // projectiles[i].y += projectiles[i].velocityY; // Moved

            bool hit = false;
            // Check collision with BIG asteroids
            for (int j = 0; j < MAX_BIG_ASTEROIDS; j++)
            {
                if (bigAsteroids[j].active && check_bullet_asteroid_collision(&projectiles[i], &bigAsteroids[j]))
                {
                    destroy_asteroid(&bigAsteroids[j]);
                    projectiles[i].active = false;
					score++;
                    hit = true;
                    break;
                }
            }
            if(hit) continue; // Next projectile if this one hit

            // Check collision with MEDIUM asteroids
            for (int j = 0; j < MAX_MEDIUM_ASTEROIDS; j++) // Removed projectiles[i].active check as it's covered by 'hit'
            {
                if (mediumAsteroids[j].active && check_bullet_asteroid_collision(&projectiles[i], &mediumAsteroids[j]))
                {
                    destroy_asteroid(&mediumAsteroids[j]);
                    projectiles[i].active = false;
					score++;
                    hit = true;
                    break;
                }
            }
            if(hit) continue;

            // Check collision with SMALL asteroids
            for (int j = 0; j < MAX_SMALL_ASTEROIDS; j++)
            {
                if (smallAsteroids[j].active && check_bullet_asteroid_collision(&projectiles[i], &smallAsteroids[j]))
                {
                    destroy_asteroid(&smallAsteroids[j]);
                    projectiles[i].active = false;
					score++;
                    // hit = true; // Not strictly needed for the last one
                    break; 
                }
            }
        }
    }
}

float get_asteroid_collision_radius(Asteroid* asteroid) {
    if (!asteroid) return 0; // Safety check

    // Based on your requirement:
    // First two (shapeType 0, 1) = big
    // Second two (shapeType 2, 3) = medium
    // Last fifth (shapeType 4) = small
    switch (asteroid->shapeType) {
        case 0:
        case 1:
            return ASTEROID_RADIUS_BIG;
        case 2:
        case 3:
            return ASTEROID_RADIUS_MEDIUM;
        case 4:
            return ASTEROID_RADIUS_SMALL;
        default:
            // Fallback if shapeType is unexpected, perhaps based on size
            if (asteroid->size == 2) return ASTEROID_RADIUS_BIG;
            if (asteroid->size == 1) return ASTEROID_RADIUS_MEDIUM;
            return ASTEROID_RADIUS_SMALL; // Default to small
    }
}

bool check_ship_asteroid_collision(Ship* ship, Asteroid* asteroid)
{
    if (!ship || !asteroid || !asteroid->active) { // Check if asteroid is active
        return false;
    }

    float distanceX = ship->x - asteroid->x;
    float distanceY = ship->y - asteroid->y;
    float distanceSquared = distanceX * distanceX + distanceY * distanceY; 

    // --- MODIFIED --- Use dynamic asteroid radius
    float current_asteroid_radius = get_asteroid_collision_radius(asteroid);
    float combinedRadii = SHIP_COLLISION_RADIUS + current_asteroid_radius;
    // --- END MODIFIED ---
    
    return distanceSquared < combinedRadii * combinedRadii;
}

void relocate_all_active_asteroids_safely(Ship* player_ship) {
    float ship_cx = player_ship->x;
    float ship_cy = player_ship->y;
    float min_dist_sq = MIN_ASTEROID_RESPAWN_DISTANCE_FROM_SHIP * MIN_ASTEROID_RESPAWN_DISTANCE_FROM_SHIP;
    int attempts; 
    
    for (int i = 0; i < MAX_BIG_ASTEROIDS; i++) {
        if (bigAsteroids[i].active) {
            attempts = 0;
            float new_x, new_y;
            float dist_sq;
            do {
                new_x = rand() % SCREEN_WIDTH;
                new_y = rand() % SCREEN_HEIGHT;
                float dx = new_x - ship_cx;
                float dy = new_y - ship_cy;
                dist_sq = dx * dx + dy * dy;
                attempts++;
            } while (dist_sq < min_dist_sq && attempts < 100); // Max 100 attempts
            bigAsteroids[i].x = new_x;
            bigAsteroids[i].y = new_y;
        }
    }

    // Relocate Medium Asteroids
    for (int i = 0; i < MAX_MEDIUM_ASTEROIDS; i++) {
        if (mediumAsteroids[i].active) {
            attempts = 0;
            float new_x, new_y;
            float dist_sq;
            do {
                new_x = rand() % SCREEN_WIDTH;
                new_y = rand() % SCREEN_HEIGHT;
                float dx = new_x - ship_cx;
                float dy = new_y - ship_cy;
                dist_sq = dx * dx + dy * dy;
                attempts++;
            } while (dist_sq < min_dist_sq && attempts < 100);
            mediumAsteroids[i].x = new_x;
            mediumAsteroids[i].y = new_y;
        }
    }

    // Relocate Small Asteroids
    for (int i = 0; i < MAX_SMALL_ASTEROIDS; i++) {
        if (smallAsteroids[i].active) {
            attempts = 0;
            float new_x, new_y;
            float dist_sq;
            do {
                new_x = rand() % SCREEN_WIDTH;
                new_y = rand() % SCREEN_HEIGHT;
                float dx = new_x - ship_cx;
                float dy = new_y - ship_cy;
                dist_sq = dx * dx + dy * dy;
                attempts++;
            } while (dist_sq < min_dist_sq && attempts < 100);
            smallAsteroids[i].x = new_x;
            smallAsteroids[i].y = new_y;
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

// Function to update projectiles (movement and OOB)
void update_projectiles_state() // --- RENAMED & MODIFIED ---
{
    for (int i = 0; i < MAX_PROJECTILES; i++)
    {
        if (projectiles[i].active)
        {
            projectiles[i].x += projectiles[i].velocityX;
            projectiles[i].y += projectiles[i].velocityY;

            if (projectiles[i].x < 0 || projectiles[i].x >= SCREEN_WIDTH || projectiles[i].y < 0 || projectiles[i].y >= SCREEN_HEIGHT)
            {
                projectiles[i].active = false;
            }
        }
    }
}

void draw_projectiles()
{
    for (int i = 0; i < MAX_PROJECTILES; i++)
    {
        if (projectiles[i].active)
        {
            // Draw the projectile as a short line or point
            // If drawing as a line (like a tracer):
            draw_line((int)projectiles[i].x, (int)projectiles[i].y, (int)(projectiles[i].x - projectiles[i].velocityX), (int)(projectiles[i].y - projectiles[i].velocityY));
            // If drawing as a point (more common for Asteroids bullets):
            //draw_point((int)projectiles[i].x, (int)projectiles[i].y);
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

void spawn_new_big_asteroid_offscreen() {
    // Count currently active big asteroids
    int activeBigCount = 0;
    for (int i = 0; i < MAX_BIG_ASTEROIDS; i++) {
        if (bigAsteroids[i].active) {
            activeBigCount++;
        }
    }

    if (activeBigCount >= MAX_CONCURRENT_BIG_ASTEROIDS) {
        return; // Don't spawn if too many are already active
    }

    for (int i = 0; i < MAX_BIG_ASTEROIDS; i++) {
        if (!bigAsteroids[i].active) {
            init_asteroid(&bigAsteroids[i], 2); // size 2 = Big

            int edge = rand() % 4; // 0: top, 1: bottom, 2: left, 3: right
            float spawn_x, spawn_y;
            float speed_x, speed_y;
            // Random base speed between 1.0 and 2.0 (can be adjusted)
            float base_speed = 1.0 + (float)(rand() % 101) / 100.0; 

            if (edge == 0) { // Top edge
                spawn_x = (float)(rand() % SCREEN_WIDTH);
                spawn_y = -30.0; // Start just above screen
                speed_x = ((float)(rand() % 201) / 100.0 - 1.0) * base_speed * 0.5; // Random horizontal component (-0.5 to 0.5 of base_speed)
                speed_y = base_speed; // Move downwards
            } else if (edge == 1) { // Bottom edge
                spawn_x = (float)(rand() % SCREEN_WIDTH);
                spawn_y = SCREEN_HEIGHT + 30.0; // Start just below screen
                speed_x = ((float)(rand() % 201) / 100.0 - 1.0) * base_speed * 0.5;
                speed_y = -base_speed; // Move upwards
            } else if (edge == 2) { // Left edge
                spawn_x = -30.0; // Start just left of screen
                spawn_y = (float)(rand() % SCREEN_HEIGHT);
                speed_x = base_speed; // Move rightwards
                speed_y = ((float)(rand() % 201) / 100.0 - 1.0) * base_speed * 0.5; // Random vertical component
            } else { // Right edge (edge == 3)
                spawn_x = SCREEN_WIDTH + 30.0; // Start just right of screen
                spawn_y = (float)(rand() % SCREEN_HEIGHT);
                speed_x = -base_speed; // Move leftwards
                speed_y = ((float)(rand() % 201) / 100.0 - 1.0) * base_speed * 0.5;
            }
            bigAsteroids[i].x = spawn_x;
            bigAsteroids[i].y = spawn_y;
            bigAsteroids[i].speedX = speed_x;
            bigAsteroids[i].speedY = speed_y;
            
            // init_asteroid already sets shapeType for big asteroids (0 or 1)
            // bigAsteroids[i].shapeType = rand() % 2; // This is done in init_asteroid

            break; // One asteroid spawned, exit loop
        }
    }
}



void main( void )
{
	score = 0;
	lives = 3;
    isAlive = true;
	
    Ship playerShip = { SCREEN_WIDTH/2, SCREEN_HEIGHT/2, 0.0, 0.0, 0.0 };

    float rotationSpeed = 4.0;  // radians per second
    float thrustPower = 3.0;    // pixels per second square
    float friction = 0.985;      // friction factor
    float deltaT = 1.0/60.0; //DeltaTime
    bool isThrusting = false;
    int flameFrameCounter = 0;

    // Initialize asteroids and ensure they are not on top of player
    for (int i = 0; i < MAX_BIG_ASTEROIDS; i++) {
        init_asteroid(&bigAsteroids[i], 2);
    }
    // Call relocate once at the beginning to ensure initial asteroids are away from player start
    relocate_all_active_asteroids_safely(&playerShip); 

    while (true)
    {
		clear_screen(color_black);
		
		if (isAlive)
		{
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
			
			bigAsteroidSpawnTimer++;
            if (bigAsteroidSpawnTimer >= BIG_ASTEROID_SPAWN_INTERVAL) {
                bigAsteroidSpawnTimer = 0;
                spawn_new_big_asteroid_offscreen();
            }

			for (int i = 0; i < MAX_BIG_ASTEROIDS; i++) update_asteroid(&bigAsteroids[i]);
			for (int i = 0; i < MAX_MEDIUM_ASTEROIDS; i++) update_asteroid(&mediumAsteroids[i]);
			for (int i = 0; i < MAX_SMALL_ASTEROIDS; i++) update_asteroid(&smallAsteroids[i]);
			
			update_projectiles_state();
			
			update_bullets_and_asteroids();
			
			bool ship_was_hit_this_frame = false;
			
			for (int i = 0; i < MAX_BIG_ASTEROIDS; i++) {
                if (bigAsteroids[i].active && check_ship_asteroid_collision(&playerShip, &bigAsteroids[i])) {
                    lives--;
                    destroy_asteroid(&bigAsteroids[i]); // Destroy asteroid first
                    ship_was_hit_this_frame = true;
                    break; 
                }
            }
            // Check MEDIUM asteroids (only if not hit by a big one)
            if (!ship_was_hit_this_frame) {
                for (int i = 0; i < MAX_MEDIUM_ASTEROIDS; i++) {
                    if (mediumAsteroids[i].active && check_ship_asteroid_collision(&playerShip, &mediumAsteroids[i])) {
                        lives--;
                        destroy_asteroid(&mediumAsteroids[i]);
                        ship_was_hit_this_frame = true;
                        break;
                    }
                }
            }
            // Check SMALL asteroids (only if not hit by big or medium)
            if (!ship_was_hit_this_frame) {
                for (int i = 0; i < MAX_SMALL_ASTEROIDS; i++) {
                    if (smallAsteroids[i].active && check_ship_asteroid_collision(&playerShip, &smallAsteroids[i])) {
                        lives--;
                        destroy_asteroid(&smallAsteroids[i]);
                        ship_was_hit_this_frame = true;
                        break;
                    }
                }
            }
			
			if (ship_was_hit_this_frame) {
                playerShip.x = SCREEN_WIDTH / 2.0;
                playerShip.y = SCREEN_HEIGHT / 2.0;
                playerShip.velocityX = 0.0;
                playerShip.velocityY = 0.0;
                playerShip.angle = 0.0;

				
				relocate_all_active_asteroids_safely(&playerShip);
				
                if (lives <= 0) {
                    isAlive = false;
                }
            }

			// Update flame animation
			flameFrameCounter = (flameFrameCounter + 1) % 4;

			draw_asteroids();
			
			// Draw ship
			draw_ship((int)playerShip.x, (int)playerShip.y, playerShip.angle, isThrusting, flameFrameCounter);
			
			draw_projectiles();
			
			int_to_string(score, numberBuffer);
			
			set_drawing_point(10, 10);
			print("Score:");
			
			set_drawing_point(70, 10);
			print(numberBuffer);
			
			set_drawing_point(10, 30);
			print("Life:");

			if(lives == 3)
			{
				set_drawing_point(70, 30);
				print("V V V");
			}
			if(lives == 2)
			{
				set_drawing_point(70, 30);
				print("V V");
			}
			if(lives == 1)
			{
				set_drawing_point(70, 30);
				print("V");
			}
			
		}
		else
		{
			if(score > maxScore)
			{
				maxScore = score;
			}
			
			set_drawing_point(SCREEN_WIDTH/2 - 50, SCREEN_HEIGHT/2 - 10);
            print("GAME OVER");

            int_to_string(score, numberBuffer);
            set_drawing_point(SCREEN_WIDTH/2 - 70, SCREEN_HEIGHT/2 + 10);
            print("Final Score:");
            set_drawing_point(SCREEN_WIDTH/2 + 60, SCREEN_HEIGHT/2 + 10);
            print(numberBuffer);
			
			int_to_string(maxScore, numberBuffer);
            set_drawing_point(SCREEN_WIDTH/2 - 70, SCREEN_HEIGHT/2 + 30);
            print("Highscore:");
            set_drawing_point(SCREEN_WIDTH/2 + 60, SCREEN_HEIGHT/2 + 30);
            print(numberBuffer);
			
			set_drawing_point(SCREEN_WIDTH/2 - 90, SCREEN_HEIGHT/2 + 60);
			print("Press A to restart");
			
			if (gamepad_button_a() == 1)  // Assuming button B fires the projectile
			{
				score = 0;
                lives = 3;
                isAlive = true;
                playerShip.x = SCREEN_WIDTH / 2.0;
                playerShip.y = SCREEN_HEIGHT / 2.0;
                playerShip.velocityX = 0.0;
                playerShip.velocityY = 0.0;
                playerShip.angle = 0;

                // Clear all projectiles
                for(int i=0; i<MAX_PROJECTILES; i++) projectiles[i].active = false;

                // Clear all asteroids and re-initialize starting ones
                for(int i=0; i<MAX_BIG_ASTEROIDS; i++) bigAsteroids[i].active = false;
                for(int i=0; i<MAX_MEDIUM_ASTEROIDS; i++) mediumAsteroids[i].active = false;
                for(int i=0; i<MAX_SMALL_ASTEROIDS; i++) smallAsteroids[i].active = false;

                for (int i = 0; i < MAX_BIG_ASTEROIDS; i++) { // Re-initialize big asteroids
                    init_asteroid(&bigAsteroids[i], 2);
                }
                relocate_all_active_asteroids_safely(&playerShip); // Ensure they are away
            }
		}
       
		end_frame();
    }

}



