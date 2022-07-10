#!/bin/sh
#Author Mrityunjoy

target=$1


echo ""

echo "---------------------------------------------------------------------------\n"

wget -qO- $1 | grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*" | sort -u


wget -qO- $1 | grep -Eo "(http|https)://[a-zA-Z0-9.]*" | sort -u

wget -qO- $1 | grep -Eo "(https?://)?/?[{}a-z0-9A-Z_\.-]{2,}/[{}/a-z0-9A-Z_\.-]+" | sort -u



echo "\n"
