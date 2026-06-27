import subprocess
import sys


def main() -> int:
    return subprocess.call(["terraform", "-chdir=terraform", "plan", *sys.argv[1:]])


if __name__ == "__main__":
    raise SystemExit(main())
