#!/usr/bin/env bash


echo
echo
echo "10^5 scale timing: "
time $1 100000 100000 > /dev/null

echo
echo
echo "10^6 scale timing: "
time $1 1000000 1000000 > /dev/null

echo
echo
echo "10^7 scale timing: "
time $1 10000000 10000000 > /dev/null

echo
echo
echo "10^8 scale timing: "
time $1 100000000 100000000 > /dev/null