#!/usr/bin/env bash

layout=$(xkblayout-state print "%n")
case $layout in
    English)
        state=EN ;;
    Hindi)
        state=HI ;;
    US*french*)
        state=FR ;;
    *)
        state=ERR ;;
esac
echo $state
