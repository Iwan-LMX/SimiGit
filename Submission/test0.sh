#!/bin/dash
# This is for test grip-init and grip-add
# My code temp
{
    ./grip-init fdfd
    rm -rf .grip
    ./grip-init f

    ./grip-init
    ./grip-init

    #test grip-add
    ./grip-add 213123
    ./grip-add @#@FDF
    ./grip-add
    
    rm a b
    ./grip-add a
    ./grip-add a FDFDF@##$
    
    touch a b
    ./grip-add a bdfd
    ./grip-add a b
    ./grip-add a
    ./grip-add b
} > temp 2>&1

# correct 
{
    2041 grip-init fdfd
    rm -rf .grip
    2041 grip-init f

    2041 grip-init
    2041 grip-init

    #test grip-add
    2041 grip-add 213123
    2041 grip-add @#@FDF
    2041 grip-add
    
    rm a b
    2041 grip-add a
    2041 grip-add a FDFDF@##$
    
    touch a b
    2041 grip-add a bdfd
    2041 grip-add a b
    2041 grip-add a
    2041 grip-add b
}> temp2041 2>&1

# Compare the files and output result
if diff temp temp2041 > /dev/null 2>&1; then
    echo "pass"
else
    echo "Failed!"
fi

