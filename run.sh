#!/bin/bash
set -e

OUT_DIR=out
mkdir -p $OUT_DIR

DAY=$1

erlc -o $OUT_DIR d${DAY}.erl
erl -pa $OUT_DIR -noshell -s d${DAY} run -s init stop

