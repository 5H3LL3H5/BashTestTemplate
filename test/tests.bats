#!/usr/bin/env bats
setup() {
  . "$BATS_TEST_DIRNAME/../myapp.sh"
}

teardown() {
  : 
}

@test "Check that we have a /tmp directory" {
  run stat /tmp
  [ "$status" -eq 0 ]
}

@test "invoking main without arguments prints usage" {
  run main
  [ "$status" -eq 1 ]
  [ "$output" = "Error: Das ist ein Fehler" ]
}
