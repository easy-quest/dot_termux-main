#!/data/data/com.termux/files/usr/bin/sh
# Get some needed tools. coreutils for mkdir command, gnugp for the signing key, and apt-transport-https to actually connect to the repo
apt-get update
apt-get --assume-yes upgrade
apt-get --assume-yes install coreutils gnupg
pkg i root-repo  x11-repo -y
# Создайте каталог sources.list.d (источники.список.d)
mkdir -p $PREFIX/etc/apt/sources.list.d
# Напишите необходимый исходный файл 
if apt-cache policy | grep -q "termux.*24\|termux.org\|bintray.*24\|k51qzi5uqu5dg9vawh923wejqffxiu9bhqlze5f508msk0h7ylpac27fdgaskx" ; then
echo "deb https://its-pointless.github.io/files/24 termux extras" > $PREFIX/etc/apt/sources.list.d/pointless.list
else
echo "deb https://its-pointless.github.io/files/21 termux extras" > $PREFIX/etc/apt/sources.list.d/pointless.list
fi
# Добавить ключ подписи из https://its-pointless.github.io/pointless.gpg
if [ -n $(command -v curl) ]; then
curl -sLo $PREFIX/etc/apt/trusted.gpg.d/pointless.gpg --create-dirs https://its-pointless.github.io/pointless.gpg
elif [ -n $(command -v wget) ]; then
wget -qP $PREFIX/etc/apt/trusted.gpg.d https://its-pointless.github.io/pointless.gpg
fi
# Update apt
apt update
