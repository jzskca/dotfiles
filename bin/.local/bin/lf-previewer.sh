#!/bin/bash
# Why subtract 2? → https://github.com/gokcehan/lf/issues/735
bat --color always --terminal-width "$(($2 - 2))" --style changes,numbers "$1"
