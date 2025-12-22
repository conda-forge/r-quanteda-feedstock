copy "%RECIPE_DIR%\Makevars.ucrt" "src\Makevars.ucrt"

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit 1
