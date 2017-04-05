#!/usr/bin/env bash
currentFolder=${PWD}

pathToNode1="/opt/temp/z1/bin"
pathToNode2="/opt/temp/z2/bin"
pathToNode3="/opt/temp/z3/bin"

cd ${pathToNode1}
gnome-terminal -e "./zkServer.sh stop" --profile=Default

cd ${pathToNode2}
gnome-terminal -e "./zkServer.sh stop" --profile=Default

cd ${pathToNode3}
gnome-terminal -e "./zkServer.sh stop" --profile=Default

cd ${currentFolder}