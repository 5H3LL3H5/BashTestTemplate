#!/usr/bin/env bash

errecho() {
  echo "Error: $1" 2>&1
}

main() {
  if [[ $# != 1 ]]; then
    errecho "Das ist ein Fehler"
    exit 1
  fi
  
  exit 0
}

if [ "$BASH_SOURCE" == "$0" ]; then
  # code in here only gets executed if
  # script is run directly on the commandline
  main "$@"
fi
