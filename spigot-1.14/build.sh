#!/bin/sh
echo "Downloading BuildTools..."
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
echo "Building Spigot"
java -jar BuildTools.jar --rev 1.14
fl="$(ls | grep 'spigot-.*')"
echo "Found $fl"
cp "$fl" "/spigot.jar"