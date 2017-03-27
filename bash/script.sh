# Following tips from:
# https://jvns.ca/blog/2017/03/26/bash-quirks/

# -e    Stop executing when a command fails
# -u    Fail when you attempt to use unset variable
# -x    Print each command
set -eux

NAME="Clark"
echo All done "$NAME".
