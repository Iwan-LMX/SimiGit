#!/bin/dash

# Commands to execute
commands=(
    "grip-init fdfd"
    "rm -rf .grip"
    "grip-init f"
    "grip-init"
    "grip-init"
    "#test grip-add"
    "grip-add 213123"
    "grip-add @#@FDF"
    "grip-add"
    "rm a b"
    "grip-add a"
    "grip-add a FDFDF@##$"
    "touch a b"
    "grip-add a bdfd"
    "grip-add a b"
    "grip-add a"
    "grip-add b"
)

# Loop through the commands and execute them
for cmd in "${commands[@]}"; do
    # Check if the command contains 'grip' and replace it with './grip'
    if [[ $cmd == grip* ]]; then
        cmd="./${cmd}"
    fi

    # Execute the command
    eval $cmd
done