#!/usr/bin/env bash

errecho()
{
  echo "Error: $1" 2>&1
  exit 1
}

main()
{
  if [[ $# != 1 ]];
  then
    errecho "Das ist ein Fehler"
    exit 1
  fi
  exit 0
}

main "$@"
