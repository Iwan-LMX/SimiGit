#!/bin/dash
# This is for test grip-show normal
# My code @temp
{   
    rm -rf .grip
    rm a-test.txt a
    touch a-test.txt a
    ./grip-init
    ./grip-add a
    ./grip-add a-test.txt
    ./grip-show :a
    ./grip-show 0:a
    ./grip-show dfd:a

    ./grip-commit -m commit0
    ./grip-show :a
    ./grip-show 0:a
    ./grip-show 1:a
    ./grip-show -1:a

    echo "2dsf" >> a
    ./grip-show :a
    ./grip-show 0:a
    ./grip-show 1:a
    ./grip-commit -m commit1
    ./grip-show :a
    ./grip-show 0:a
    ./grip-show 1:a
} > @temp 2>&1

# correct 
{
    rm -rf .grip
    rm a-test.txt a
    touch a-test.txt a
    2041 grip-init
    2041 grip-add a
    2041 grip-add a-test.txt
    2041 grip-show :a
    2041 grip-show 0:a
    2041 grip-show dfd:a

    2041 grip-commit -m commit0
    2041 grip-show :a
    2041 grip-show 0:a
    2041 grip-show 1:a
    2041 grip-show -1:a

    echo "2dsf" >> a
    2041 grip-show :a
    2041 grip-show 0:a
    2041 grip-show 1:a
    2041 grip-commit -m commit1
    2041 grip-show :a
    2041 grip-show 0:a
    2041 grip-show 1:a
}> @temp2041 2>&1

# Compare the files and output result
if diff @temp @temp2041 > /dev/null 2>&1; then
    echo "pass"
else
    echo "Failed!"
fi

