#!/bin/bash

echo Refreshing fonts cache...
fc-cache
mkdir /tmp/output
cd /tmp/currentjob
xelatex --interaction=nonstopmode --output-directory=/tmp/output $1
cp -f /tmp/output/*.pdf .

