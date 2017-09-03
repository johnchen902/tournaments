#!/usr/bin/env bash
find . -name '*.m4' ! -name 'include.m4' | awk '{ d=$1; sub(/.m4$/, "", d); system("m4 " $1 " > ../" d) }'
