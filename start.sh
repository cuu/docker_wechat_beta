#!/bin/bash

eval `dbus-launch --sh-syntax --exit-with-session`
fcitx5 &

wechat 
