#!/bin/bash

DIR=`dirname $0`
DIR=`realpath $DIR`

UID=`id -u`
GID=`id -g`

echo $DIR

docker build --build-arg UID="$UID" --build-arg GID="$GID" -f docker-vpnlaunchpad/Dockerfile.stretch --rm=true -t samuelhbne/vpnlaunchpad:stretch docker-vpnlaunchpad

mkdir -p $DIR/.vpn-launchpad/.aws
if [ ! -f $DIR/.vpn-launchpad/.aws/config ]; then
	echo "[default]\nregion = ap-northeast-1\noutput = json\n">>$DIR/.vpn-launchpad/.aws/config
fi
docker run --rm=true --name vpnlaunchpad-stretch -v $DIR:/home/ubuntu/vpn-launchpad -v $DIR/.vpn-launchpad/.aws:/home/ubuntu/.aws -v $DIR/.vpn-launchpad:/home/ubuntu/.vpn-launchpad -it samuelhbne/vpnlaunchpad:stretch
