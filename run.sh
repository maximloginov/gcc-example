#!/bin/sh

uname -a > result.dat
id >> result.dat 
cat /etc/*release* >> result.dat
cat /etc/proc >> result.dat

sudo add-apt-repository http://www.openfoam.org/download/ubuntu
sudo apt-get update
sudo apt-get install openfoam240
