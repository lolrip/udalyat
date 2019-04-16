#!/bin/bash
until xvfb-run python2 watch.py; do
  echo "'watch.py' crashed with exit code $?. Restarting..." >&2
  sleep 1
done
