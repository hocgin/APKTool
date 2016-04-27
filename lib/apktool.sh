#!/bin/sh
# Author: hocgin@gmail.com
#
PWD="$( cd "$( dirname "$0"  )" && pwd  )"
java -jar "$PWD/apktool.jar" $1 $2 $3 $4 $5 $6 $7 $8 $9
