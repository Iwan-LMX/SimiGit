#!/bin/dash
# This is for test grip-branch
# My code @temp
{   
    rm -rf .grip
    echo "1" > a
    echo "2" > b
    echo "3" > c
    ./grip-branch

    ./grip-init
    ./grip-branch

    ./grip-branch -d
    ./grip-branch df
    ./grip-branch
    
    ./grip-add a b c
    ./grip-commit -m fisrt
    ./grip-branch -d fdfdfd
    ./grip-branch -d df

    ./grip-branch new branch
    ./grip-branch "new branch"
    ./grip-branch "newbranch"

    ./grip-branch
} > @temp 2>&1

# correct 
{
    rm -rf .grip
    echo "1" > a
    echo "2" > b
    echo "3" > c
    2041 grip-branch

    2041 grip-init
    2041 grip-branch

    2041 grip-branch -d
    2041 grip-branch df
    2041 grip-branch
    
    2041 grip-add a b c
    2041 grip-commit -m fisrt
    2041 grip-branch -d fdfdfd
    2041 grip-branch -d df

    2041 grip-branch new branch
    2041 grip-branch "new branch"
    2041 grip-branch "newbranch"

    2041 grip-branch
}> @temp2041 2>&1

# Compare the files and output result
if diff @temp @temp2041 > /dev/null 2>&1; then
    echo "pass"
else
    echo "Failed!"
fi

