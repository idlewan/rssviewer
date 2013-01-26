#!/bin/sh

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

#coffee -l -w --output ../src/js --compile ../src/coffee/
coffee -l -w --output ./ --compile ./
