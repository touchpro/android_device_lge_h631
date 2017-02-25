#!/bin/bash

set -e

export VENDOR=lge
export DEVICE=h631
./../../$VENDOR/g4stylus-common/setup-makefiles.sh $@
