#!/bin/bash

if [ ! -e "acetexts.pl" ]
then
    wget http://raw.githubusercontent.com/Attempto/APE/master/tests/acetexts.pl
fi

swipl -s acetexts-to-lines.pl -g main -t halt | sh filter.sh > tests.in.txt
wc -l tests.in.txt
