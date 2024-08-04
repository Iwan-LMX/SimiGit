#!/bin/dash
# This is for test grip-rm  
# My code @temp
{   
    rm -rf .grip
    ./grip-status dfdf
    ./grip-status
    echo "1" > a
    echo "2" > b
    echo "3" > c
    ./grip-status

    ./grip-rm
    ./grip-rm a
    ./grip-rm --force a
    ./grip-rm --cached a
    ./grip-status

    ./grip-init
    ./grip-add a b c
    ./grip-status

    ./grip-rm a
    ./grip-rm --force a
    ./grip-status

    ./grip-commit -m commit0

    ./grip-rm --cached b
    ./grip-status
} > @temp 2>&1

# correct 
{
    rm -rf .grip
    2041 grip-status dfdf
    2041 grip-status

    echo "1" > a
    echo "2" > b
    echo "3" > c
    2041 grip-status

    2041 grip-rm
    2041 grip-rm a
    2041 grip-rm --force a
    2041 grip-rm --cached a
    2041 grip-status

    2041 grip-init
    2041 grip-add a b c
    2041 grip-status

    2041 grip-rm a
    2041 grip-rm --force a
    2041 grip-status

    2041 grip-commit -m commit0

    2041 grip-rm --cached b
    2041 grip-status
}> @temp2041 2>&1

# Compare the files and output result
if diff @temp @temp2041 > /dev/null 2>&1; then
    echo "pass"
else
    echo "Failed!"
fi

