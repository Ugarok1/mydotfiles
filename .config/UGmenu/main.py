import subprocess

blocks = ["calculator", "calendar"]
rofi_run = subprocess.run(
    ["rofi", "-dmenu", "-i", "-p", "Select Action:"],
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
