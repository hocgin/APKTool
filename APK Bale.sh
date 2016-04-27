#!/bin/sh
# Author: Hocgin
# Email: hocgin@gmail.com
basePath="$( cd "$( dirname "$0"  )" && pwd  )"
java -jar "$basePath/lib/apktool.jar" b "$1" 
echo "请到$1目录查找"

