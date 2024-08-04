#!/bin/dash
# This is for test grip-commit advanced  
# My code @temp
{   
    rm -rf .grip
    echo "1" > a
    echo "2" > b
    echo "3" > c

    ./grip-commit -a -m commit0

    ./grip-init
    ./grip-show :a
    ./grip-show 0:b

    ./grip-add a
    ./grip-commit -a -m commit0
    ./grip-commit -a -m commit0

    ./grip-show 0:a
    ./grip-add b c
    echo "new" >> b

    ./grip-commit -m commit1
    ./grip-show 1:b
    ./grip-commit -a -m commit2
    ./grip-show 2:b
} > @temp 2>&1

# correct 
{
    rm -rf .grip
    echo "1" > a
    echo "2" > b
    echo "3" > c

    2041 grip-commit -a -m commit0

    2041 grip-init
    2041 grip-show :a
    2041 grip-show 0:b

    2041 grip-add a
    2041 grip-commit -a -m commit0
    2041 grip-commit -a -m commit0

    2041 grip-show 0:a
    2041 grip-add b c
    echo "new" >> b
    
    2041 grip-commit -m commit1
    2041 grip-show 1:b
    2041 grip-commit -a -m commit2
    2041 grip-show 2:b
}> @temp2041 2>&1

# Compare the files and output result
if diff @temp @temp2041 > /dev/null 2>&1; then
    echo "pass"
else
    echo "Failed!"
fi

