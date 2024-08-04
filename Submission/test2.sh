#!/bin/dash
# This is for test grip-log
# My code temp
{   
    rm -rf .grip
    ./grip-log fdfd
    ./grip-log
    
    ./grip-init
    ./grip-log fdfd
    ./grip-log

    touch a
    ./grip-add a
    ./grip-commit -m commit0
    ./grip-log

    touch b
    ./grip-add b
    ./grip-commit -m commit1
    ./grip-log
} > temp 2>&1

# correct 
{
    rm -rf .grip
    2041 grip-log fdfd
    2041 grip-log
    
    2041 grip-init
    2041 grip-log fdfd
    2041 grip-log

    touch a
    2041 grip-add a
    2041 grip-commit -m commit0
    2041 grip-log

    touch b
    2041 grip-add b
    2041 grip-commit -m commit1
    2041 grip-log
}> temp2041 2>&1

# Compare the files and output result
if diff temp temp2041 > /dev/null 2>&1; then
    echo "pass"
else
    echo "Failed!"
fi

