#!/data/data/com.termux/files/usr/bin/bash
#=============================================================================
# basic.bash --- basic script files     
# Copyright (c) 2016-2021 nvspc EasyQuest
# Author: Ivan Yastrebov < easy-quest@mail.ru >
# URL: https://easyquest.host
#=============================================================================
pkg up  -y

pkg i termux-api  git -y

pkg install build-essential cmake python fish -y

pkg i libgmp libmpc libmpfr libxml2 libxslt freetype libjpeg-turbo libpng libsodium libzmq -y

termux-change-repo
