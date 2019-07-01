#!/usr/bin/env bats
# -*- coding: utf-8 -*-

load init

@test "addition using bc" {
    # Arrange

    # Act
    result="$(echo 2+2 | bc)"

    # Assert
    [ "$result" -eq 4 ]
}

@test "addition using dc" {
    # Arrange

    # Act
    result="$(echo 2 2+p | dc)"

    # Assert
    [ "$result" -eq 4 ]
}
