#!/usr/bin/env python3
import subprocess
import re


def get_battery_percentages():
    output = subprocess.check_output(["sudo", "tlp-stat", "-b"], text=True)

    charges = re.findall(r"Charge\s+=\s+([\d.]+)", output)

    bat1 = charges[0] if len(charges) > 0 else "0"
    bat2 = charges[1] if len(charges) > 1 else "0"

    return bat1, bat2


bat1_percent, bat2_percent = get_battery_percentages()

print(f" {bat1_percent}% + {bat2_percent}%")

# OLD CODE FOR GENERAL CHARGE
##!/bin/sh
#
# battery=$(sudo tlp-stat -b | tac | grep -m 1 "Charge" | tr -d -c "[:digit:],.")
#
# echo " $battery%"
