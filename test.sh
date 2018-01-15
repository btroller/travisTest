#!/bin/bash

./otp -g -p pad
./otp -e -o enc -p pad < testIn
./otp -d -i enc -o dec -p pad

diff -q testIn dec

if [ $? != 0 ]; then
   exit 1
fi
