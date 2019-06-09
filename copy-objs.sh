cp ../ev3rt-hrp2/base-workspace/uImage firmware
cp \
  ../ev3rt-hrp2/sdk/OBJ/ev3api_battery.o \
  ../ev3rt-hrp2/sdk/OBJ/ev3api_brick.o \
  ../ev3rt-hrp2/sdk/OBJ/ev3api_cfg.o \
  ../ev3rt-hrp2/sdk/OBJ/ev3api_fs.o \
  ../ev3rt-hrp2/sdk/OBJ/ev3api_lcd.o \
  ../ev3rt-hrp2/sdk/OBJ/ev3api_motor.o \
  ../ev3rt-hrp2/sdk/OBJ/ev3api_newlib.o \
  ../ev3rt-hrp2/sdk/OBJ/ev3api_sensor.o \
  ../ev3rt-hrp2/sdk/OBJ/ev3api_speaker.o \
  ../ev3rt-hrp2/sdk/OBJ/ev3api.o \
  ../ev3rt-hrp2/sdk/OBJ/module_cfg.o \
  ../ev3rt-hrp2/sdk/OBJ/strerror.o \
  ../ev3rt-hrp2/sdk/OBJ/tlsf.o \
  ../ev3rt-hrp2/sdk/OBJ/t_perror.o \
  ../ev3rt-hrp2/sdk/OBJ/vasyslog.o \
  base-objs
cp ../ev3rt-hrp2/target/ev3_gcc/dmloader/app/app.ld base-objs
cp ../ev3rt-hrp2/sdk/OBJ/app.o test-leds
