cp ../$1/target/armv5te-unknown-linux-gnueabi/release/*.a base-objs/app.a && \
arm-none-eabi-gcc \
  -Wl,-nmagic -nostdlib -pie  \
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
