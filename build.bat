@ECHO Off

call env

if "%JAVA8_HOME%" == "" (
  echo Unable to determine JAVA 8 Home ^(Environmental variable %%^JAVA8_HOME%% not defined^)
  echo.
  pause
  exit /b 1
)

set JAVA_HOME=%JAVA8_HOME%

call gradlew createJar

if %ERRORLEVEL% == 0 (
  copy usbserial\eclipse_lib\usbserial.jar ..\CAN_Bus\app\libs\
)
