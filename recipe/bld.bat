:: copy "%RECIPE_DIR%\Makevars.ucrt" "src\Makevars.ucrt"
:: IF %ERRORLEVEL% NEQ 0 exit 1

REM set PATH=%PATH%;%PREFIX%\lib\R\library\RcppParallel\lib\x64

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit 1

:: Copy tbb.dll from RcppParallel folder to same folder as quanteda.dll
REM copy %PREFIX%\lib\R\library\RcppParallel\lib\x64\tbb.dll %PREFIX%\lib\R\library\quanteda\libs\x64
REM IF %ERRORLEVEL% NEQ 0 exit 1
