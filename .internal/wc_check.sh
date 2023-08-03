#!/bin/bash

rm -f .autogen/*.txt.wc
mkdir -p .autogen
for i in *.txt ; do wc -l $i >.autogen/$i.wc ; done

if [ -z "$(git status --porcelain)" ]; then
  echo 'Good, all `.txt.wc` files are what they should be.'
  exit 0
else
  echo 'Check failed, re-run `.internal/wc_update.sh`, or, even, better, run `.internal/configure_git_hook.sh` and add another commit!'
  exit 1
fi
