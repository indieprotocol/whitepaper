#!/bin/bash

echo "\newpage" >refs.md
echo "" >>refs.md
echo "## References" >>refs.md

egrep '^\[[0-9+]\]:' whitepaper.md |sed 's/\[\([0-9+]\)\]: \([^ ]*\) "\(.*\)"$/\1. \3 <\2>/' >>refs.md
