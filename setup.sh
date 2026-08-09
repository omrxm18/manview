#!/usr/bin/env bash

  set -e

ARCH=x86_64
TAG=latest
LOCALBIN=$HOME/.local/bin

  case "$1" in
    *)
    TAG="$1"
    if [ -z "$2" ]; then
        ARCH="$2"
    fi
    shift 2
    ;;
  esac

wget -O https://github.com/omrxm18/manview/releases/$TAG/manview-$ARCH

if [ -d $LOCALBIN ]; then
    cp manview $LOCALBIN
  else
    mkdir -p $LOCALBIN
    cp manview $LOCALBIN
fi
