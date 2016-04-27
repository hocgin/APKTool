#!/bin/sh
# Author: Hocgin
# Email: hocgin@gmail.com
# 参数
# $1 apk路径
if [ ! -f $1 ];
then
	echo "no"
	exit 1
fi
## Get Smail && Res
basePath="$( cd "$( dirname "$0"  )" && pwd  )"
str=${1##*\/}
fname=${str%%.*}
smailPath="${basePath}/smail/${fname}"
java -jar "$basePath/lib/apktool.jar" d "$1" -o "${smailPath}"

## Get unzip
unzipPath=${basePath}/unzip/${fname}
unzip $1 -d "${unzipPath}"

## Get jar
jarPath=${basePath}/jar
dexPath=${unzipPath}/classes.dex
chmod 777 "${dexPath}"
chmod 777 -R "$basePath/lib/dex2jar"
sh "$basePath/lib/dex2jar/d2j-dex2jar.sh" "${dexPath}"
mv ./classes-dex2jar.jar "${jarPath}/${fname}.jar"

sudo chmod 777 -R "${basePath}/unzip"
sudo chmod 777 -R "${basePath}/smail"
sudo chmod 777 -R "${basePath}/jar"
