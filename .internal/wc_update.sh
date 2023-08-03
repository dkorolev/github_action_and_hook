#!/bin/bash
rm -f .autogen/*.txt.wc
mkdir -p .autogen
for i in *.txt ; do wc -l $i >.autogen/$i.wc ; done
git add .autogen/*
