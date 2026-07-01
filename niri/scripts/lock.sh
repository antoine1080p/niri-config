#!/usr/bin/env bash
set -euo pipefail

BACKGROUND=""

if command -v grim &>/dev/null; then
    grim /tmp/lock-screen.png
    convert /tmp/lock-screen.png -blur 0x8 /tmp/lock-screen-blur.png
    BACKGROUND="-i /tmp/lock-screen-blur.png"
fi

exec swaylock $BACKGROUND
