#!/bin/sh

uname -a > result.dat
id >> result.dat 
cat /etc/*release* >> result.dat
cat /etc/proc >> result.dat
