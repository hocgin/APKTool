#!/bin/sh
# Author: Hocgin
# Email: hocgin@gmail.com
# --------- use ----------
# sh clear.sh
# ------------------------
basePath="$( cd "$( dirname "$0"  )" && pwd  )"
rm -rf ls "${basePath}/jar"
rm -rf ls "${basePath}/smail"
rm -rf ls "${basePath}/unzip"

mkdir "${basePath}/jar"
mkdir "${basePath}/smail"
mkdir "${basePath}/unzip"
