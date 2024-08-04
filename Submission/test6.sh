#!/bin/dash
# This is for test grip-rm  
# My code @temp
{   
    rm -rf .grip
    echo "1" > a
    echo "2" > b
    echo "3" > c

    ./grip-rm
    ./grip-rm a
    ./grip-rm --force a
    ./grip-rm --cached a

    ./grip-init
    ./grip-add a b c
    ./grip-show :a

    ./grip-rm a
    ./grip-rm --force a

    ./grip-commit -m commit0
    ./grip-show 0:a
    ./grip-show 0:b
    ./grip-show 0:c

    ./grip-show :b
    ./grip-rm --cached b
    ./grip-show :b
} > @temp 2>&1

# correct 
{
    rm -rf .grip
    echo "1" > a
    echo "2" > b
    echo "3" > c

    2041 grip-rm
    2041 grip-rm a
    2041 grip-rm --force a
    2041 grip-rm --cached a

    2041 grip-init
    2041 grip-add a b c
    2041 grip-show :a

    2041 grip-rm a
    2041 grip-rm --force a

    2041 grip-commit -m commit0
    2041 grip-show 0:a
    2041 grip-show 0:b
    2041 grip-show 0:c
    
    2041 grip-show :b
    2041 grip-rm --cached b
    2041 grip-show :b
}> @temp2041 2>&1

# Compare the files and output result
if diff @temp @temp2041 > /dev/null 2>&1; then
    echo "pass"
else
    echo "Failed!"
fi

