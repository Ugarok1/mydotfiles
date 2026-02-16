import subprocess
import os

blocks = ["calculator", "calendar", "wallpapers", "documents"]
rofi_run = subprocess.run(
    ["rofi", "-dmenu", "-i", "-p", "Select Action"],
    input="\n".join(blocks),
    text=True,
    capture_output=True,
    check=True,
)

rofi_run_output = rofi_run.stdout.strip()

if rofi_run_output == "calculator":
    subprocess.run("galculator", shell=True)
if rofi_run_output == "calendar":
    subprocess.run(["python3", "/home/myka/.config/UGmenu/popup-calendar.py"])
if rofi_run_output == "wallpapers":
    os.system("feh --bg-fill --randomize ~/images/wallpapers/")
if rofi_run_output == "documents":
    os.system("zathura")
