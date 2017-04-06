#!/usr/bin/env bash
currentFolder=${PWD}

pathToNode1="../z1/bin"
pathToNode2="../z2/bin"
pathToNode3="../z3/bin"

cd ${pathToNode1}
gnome-terminal -e "./zkServer.sh stop" --profile=Default
cd ${currentFolder}

cd ${pathToNode2}
gnome-terminal -e "./zkServer.sh stop" --profile=Default
cd ${currentFolder}

cd ${pathToNode3}
gnome-terminal -e "./zkServer.sh stop" --profile=Default
cd ${currentFolder}

cd ${currentFolder}