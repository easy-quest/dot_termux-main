#!/data/data/com.termux/files/usr/bin/bash
#=============================================================================
# basic.bash --- basic script files     
# Copyright (c) 2016-2021 nvspc EasyQuest
# Author: Ivan Yastrebov < easy-quest@mail.ru >
# URL: https://easyquest.host
#=============================================================================
pkg up  -y
pkg install numpy
pkg install scipy

pkg i libgmp libmpc libmpfr libxml2 libxslt freetype libjpeg-turbo libpng libsodium libzmq -y
