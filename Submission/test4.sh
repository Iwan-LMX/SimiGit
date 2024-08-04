#!/bin/dash
# This is for test grip-show advanced
# My code @temp
{   
    rm -rf .grip
    rm a
    ./grip-show
    ./grip-show :a
    ./grip-show 0:a
    ./grip-show :a:df
    ./grip-show -1:a

    echo "1231" > a
    ./grip-init
    ./grip-show :a
    ./grip-show 0:a

    ./grip-show :a:df
    ./grip-show : fdfdfd.df
    ./grip-show -1:a
    ./grip-show 1.1:a
} > @temp 2>&1

# correct 
{
    rm -rf .grip
    rm a
    2041 grip-show
    2041 grip-show :a
    2041 grip-show 0:a
    2041 grip-show :a:df
    2041 grip-show -1:a

    echo "1231" > a
    2041 grip-init
    2041 grip-show :a
    2041 grip-show 0:a

    2041 grip-show :a:df
    2041 grip-show : fdfdfd.df
    2041 grip-show -1:a
    2041 grip-show 1.1:a
}> @temp2041 2>&1

# Compare the files and output result
if diff @temp @temp2041 > /dev/null 2>&1; then
    echo "pass"
else
    echo "Failed!"
fi

