#!/usr/bin/env bash
set -e
LIB="soggy-rock.a"
TAG="eager-canyon-eager-delta"
REPO="maplegentle/drenchedmixerhub"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
