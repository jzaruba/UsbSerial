@ECHO Off
call env
set "JAVA_HOME=%JAVA8_HOME%"
call gradlew createJar
call gradlew createSourcesJar
if %ERRORLEVEL% == 0 (
  copy usbserial\eclipse_lib\usbserial.jar ..\CAN_Bus\app\libs\
)
