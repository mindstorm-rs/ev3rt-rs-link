cp ../$1/target/armv5te-unknown-linux-gnueabi/release/lib$1.a base-objs/app.a && \
arm-none-eabi-gcc \
  -Wl,-nmagic -nostdlib -pie \
  -T base-objs/app.ld \
  -o app \
  base-objs/module_cfg.o \
  base-objs/t_perror.o \
  base-objs/strerror.o \
  base-objs/vasyslog.o \
  base-objs/tlsf.o \
  base-objs/app.a \
  base-objs/ev3api.o \
  base-objs/ev3api_battery.o \
  base-objs/ev3api_brick.o \
  base-objs/ev3api_fs.o \
  base-objs/ev3api_speaker.o \
  base-objs/ev3api_lcd.o \
  base-objs/ev3api_motor.o \
  base-objs/ev3api_newlib.o \
  base-objs/ev3api_sensor.o \
  -lm -lc -lgcc

# arm-none-eabi-gcc
#   -Wl,-nmagic -nostdlib -pie
#   -T ../../target/ev3_gcc/dmloader/app/app.ld
#   -o app
#   module_cfg.o t_perror.o strerror.o vasyslog.o tlsf.o app.o ev3api.o ev3api_battery.o ev3api_brick.o ev3api_fs.o ev3api_speaker.o ev3api_lcd.o ev3api_motor.o ev3api_newlib.o ev3api_sensor.o
#   cli_main.o cli_sensor.o cli_motor.o
#   -lm -lc -lgcc
