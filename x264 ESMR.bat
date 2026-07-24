@echo off
set "outdir=%~dp1_TASK"
if not exist "%outdir%" mkdir "%outdir%"

:loop
if "%~1"=="" goto end

echo.
echo Processing : %~nx1

ffmpeg -hide_banner -i "%~1" -map 0 -c copy -bsf:v "filter_units=remove_types=6" -map_metadata:g -1 -y "%outdir%\%~n1_task.mkv"

if errorlevel 1 (
    echo ERROR : %~nx1
) else (
    echo OK : %~nx1
)

shift
goto loop

:end
echo.
echo Finish.
pause
