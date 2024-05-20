@echo off
setlocal enabledelayedexpansion

REM Check if ATTRACTED_OBJECT is true
set ATTRACTED_OBJECT=true

if /i "%ATTRACTED_OBJECT%"=="true" (
    echo ATTRACTED_OBJECT is true. Assigning new random repel values.

    REM Assume there are 10 parts to assign new values to
    for /L %%i in (1,1,10) do (
        REM Generate a random number between 0 and 99
        set /a rand=!random! %% 100
        echo Part %%i new repel value: !rand!
    )
) else (
    echo ATTRACTED_OBJECT is not true. No new values assigned.
)

endlocal
pause
