#!/bin/sh

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

OUTPUT_DIR=./js_compiled

mkdir -p $OUTPUT_DIR
coffee -l -w --output $OUTPUT_DIR --compile ./src/
