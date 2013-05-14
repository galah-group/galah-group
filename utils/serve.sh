#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/lib.sh

check_for jekyll

# From here on every command will be printed out before it is executed
set -x

cd $DIR/..
jekyll serve --watch
