#!/usr/bin/env bash
set -euo pipefail
test -s README.md
if test -f greeting.txt; then
  test "$(wc -l < greeting.txt | tr -d ' ')" = 1
  test "$(cat greeting.txt)" = 'Hello, Symphony!'
fi
