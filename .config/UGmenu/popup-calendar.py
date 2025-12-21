import subprocess
import os


def run_calendar():
    # Define theme environment
    env = os.environ.copy()
    env["GTK_THEME"] = "Goldy-Dark-GTK"
    # Command arguments
    # --class allows i3 to identify this specific window for floating
    cmd = [
        "yad",
        "--calendar",
        "--class",
        "yad-floating-cal",
        "--undecorated",
        "--fixed",
        "--close-on-unfocus",
        "--no-buttons",
        "--center",
        "--width",
        "250",  # Set your YAD_WIDTH
        "--height",
        "200",  # Set your YAD_HEIGHT
        "--title",
        "yad-calendar",
        "--borders",
        "0",
        "--fontname",
        "Courier New 11",
    ]

    # Execute in background
    subprocess.Popen(cmd, env=env, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)


if __name__ == "__main__":
    run_calendar()
