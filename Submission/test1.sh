#!/bin/dash
# This is for test grip-commit
# My code @temp
{   
    rm -rf .grip
    ./grip-commit
    ./grip-commit dfdf
    ./grip-commit -m dfdfd
    ./grip-commit -a -m fdfdfd
    
    ./grip-init
    ./grip-commit dfdf
    ./grip-commit -m dfdf dfdfd
    ./grip-commit -m "dfdf dfdfd"
    ./grip-commit -m "dfdfdfdfd@#E@##@#!DS"
    ./grip-commit -m dfdfd

    rm a
    touch a
    ./grip-add a
    ./grip-commit dfdf
    ./grip-commit -m dfdf dfdfd
    ./grip-commit -m "dfdf dfdfd"
    ./grip-commit -m "dfdfdfdfd@#E@##@#!DS"

    ./grip-commit -m commit1
} > @temp 2>&1

# correct 
{
    rm -rf .grip
    2041 grip-commit
    2041 grip-commit dfdf
    2041 grip-commit -m dfdfd
    2041 grip-commit -a -m fdfdfd
    
    2041 grip-init
    2041 grip-commit dfdf
    2041 grip-commit -m dfdf dfdfd
    2041 grip-commit -m "dfdf dfdfd"
    2041 grip-commit -m "dfdfdfdfd@#E@##@#!DS"
    2041 grip-commit -m dfdfd

    rm a
    touch a
    2041 grip-add a
    2041 grip-commit dfdf
    2041 grip-commit -m dfdf dfdfd
    2041 grip-commit -m "dfdf dfdfd"
    2041 grip-commit -m "dfdfdfdfd@#E@##@#!DS"

    2041 grip-commit -m commit1
}> @temp2041 2>&1

# Compare the files and output result
if diff @temp @temp2041 > /dev/null 2>&1; then
    echo "pass"
else
    echo "Failed!"
fi

