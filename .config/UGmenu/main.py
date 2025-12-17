import subprocess

blocks = ["calculator"]
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
if rofi_run_output == "test2":
    subprocess.run(["echo", "test2"])
if rofi_run_output == "test3":
    subprocess.run(["echo", "test3"])
