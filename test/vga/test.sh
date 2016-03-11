#!/bin/bash
source ../test_base

export QEMU_EXTRA="-vga cirrus"
make SERVICE=Test FILES=vga.cpp
start Test.img "VGA: Verify that the service starts test"
make SERVICE=Test FILES=vga.cpp clean
