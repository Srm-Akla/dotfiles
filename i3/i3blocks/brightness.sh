#!/bin/bash

light=$(light -G -s sysfs/backlight/intel_backlight)

echo "$light"
