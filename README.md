The forked library [fails to change baud rate once a connection is open](https://github.com/felHR85/UsbSerial/issues/91) and provides no way of setting the baud rate before opening a connection. For now this fork merely changes default baud rates for some devices.

Devices Modified
--------------------------------------
[CDC devices](https://en.wikipedia.org/wiki/USB_communications_device_class) Default 230400,8,1,None,flow off  
(geniune Arduino Uno, the original baud rate was 115200)

[CH34x devices](https://www.olimex.com/Products/Breadboarding/BB-CH340T/resources/CH340DS1.PDF) Default 115200,8,1,None,flow off  
(Arduino Uno clones, the original baud rate was 9600)
