#!/bin/sh

uname -a > result.dat
id >> result.dat 
cat /etc/*release* >> result.dat
cat /proc/cpuinfo >> result.dat

sudo add-apt-repository http://www.openfoam.org/download/ubuntu >> result.dat 2>&1
sudo apt-get update
sudo apt-get install --yes --force-yes openfoam240 >> result.dat 2>&1

ls -l /opt >> result.dat
ls -l /opt/openfoam* >> result.dat 2>&1
source /opt/openfoam*/etc/bashrc >> result.dat 2>&1
