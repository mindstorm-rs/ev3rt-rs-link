#/!bin/bash

if [ $# -ne 2 ]
then
    echo "Usage: $0 {dir-name} {lib-name}"
    exit 1
fi

DIR=$1
LIB=$2

if [ -d "../$DIR" ]
then
    echo $DIR OK
else
    echo "$DIR directory not found!"
    exit 1
fi

FILE=../$1/target/armv5te-unknown-linux-gnueabi/release/lib$LIB.a

if [ -f "$FILE" ]
then
    echo $LIB OK
else
    echo "$FILE file not found!"
    exit 1
fi

cp $FILE base-objs/app.a && \
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
  base-objs/bluetooth-agent.o \
  base-objs/ev3api.o \
  base-objs/ev3api_cfg.o \
  base-objs/ev3api_battery.o \
  base-objs/ev3api_brick.o \
  base-objs/ev3api_fs.o \
  base-objs/ev3api_speaker.o \
  base-objs/ev3api_lcd.o \
  base-objs/ev3api_motor.o \
  base-objs/ev3api_newlib.o \
  base-objs/ev3api_sensor.o \
  -lm -lc -lgcc

if [ -f app ]
then
    file app
else
    echo "app file not found!"
    exit 1
fi
