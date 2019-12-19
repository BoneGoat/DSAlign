#!/usr/bin/env bash
approot="$(dirname "$(dirname "$(bin/readlink_osx.sh -fm "$0")")")"
source "$approot/venv/bin/activate"
python "$approot/align/align.py" "$@"
stty sane
