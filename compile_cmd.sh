#!/usr/bin/env bash
set -e
REPO="ruyuisans/libyewpinnacle"
LIB="woody-duct.a"
URL="https://github.com/${REPO}/releases/download/gentle-canyon-bright-delta/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -pthread -std=c++17 -O2 -o app main.cpp "$LIB" && ./app
