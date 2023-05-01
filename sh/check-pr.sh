#!/bin/bash

script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

FILE="${script_dir}/../src/hello.md"
OK_COMMENT="${script_dir}/pr-comments/ok.txt"
NG_COMMENT="${script_dir}/pr-comments/ng.txt"

if [ -e $FILE ]; then
  gh pr comment $PR_NUMBER -F $OK_COMMENT
  exit 0
else
  gh pr comment $PR_NUMBER -F $NG_COMMENT
  exit 1
fi
