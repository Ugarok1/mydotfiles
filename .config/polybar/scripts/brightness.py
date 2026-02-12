#!/usr/bin/env python3
import subprocess

bri_stat = subprocess.run(
    ["brightnessctl", "g", "intel_backlight"], capture_output=True, text=True
)
bri_stat2 = int(bri_stat.stdout) / 6820 * 100
print(f"󰌵{int(bri_stat2)}%")
