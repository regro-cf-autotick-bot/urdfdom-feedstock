mkdir build
cd build
cmake ^
    -G "NMake Makefiles" ^
    -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -D CMAKE_BUILD_TYPE=Release ^
    -D CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=ON ^
    -D BUILD_TESTING=FALSE ^
    %SRC_DIR%
if errorlevel 1 exit 1
nmake install
if errorlevel 1 exit 1
