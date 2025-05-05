@echo off
REM create obj and bin folders if non exiting, since
REM the development tools will not create them themselves
if not exist obj mkdir obj
if not exist bin mkdir bin

echo.
echo Compile the C code
echo --------------------------
E:\Soft\Vircon32\DevTools\compile AsteroidsV32.c -o obj\AsteroidsV32.asm || goto :failedcomp

echo.
echo Assemble the ASM code
echo --------------------------
E:\Soft\Vircon32\DevTools\assemble obj\AsteroidsV32.asm -o obj\AsteroidsV32.vbin || goto :failedass

echo.
echo Pack the ROM
echo --------------------------
E:\Soft\Vircon32\DevTools\packrom AsteroidsV32.xml -o bin\AsteroidsV32.v32 || goto :failedbuild
goto :succeeded

:failedcomp
echo.
echo COMPILATION FAILED
exit /b %errorlevel%

:failedass
echo.
echo ASSEMBLY FAILED
exit /b %errorlevel%

:failedbuild
echo.
echo BUILD FAILED
exit /b %errorlevel%

:succeeded
echo.
echo BUILD SUCCESSFUL
exit /b

@echo on