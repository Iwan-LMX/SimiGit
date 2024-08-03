#! /bin/dash
# This is for test grip-checkout
# My code temp
{
    rm -rf .grip
    ./grip-checkout
    ./grip-init
    touch a
    ./grip-add :a
    ./grip-rm --force a
    ./grip-commit -m dffdfd
} > temp 2>&1

# correct 
{
    rm -rf .grip
    2041 grip-checkout
    2041 grip-init
    2041 grip-checkout

    echo "new line" > a
    2041 grip-add a
    2041 grip-commit -m "first commit"
    2041 grip-checkout dfdfd
    2041 grip-checkout "dfdfd d"
    2041 grip-checkout trunk
    #Test checkout and log
    2041 grip-branch new
    2041 grip-checkout new
    touch b
    2041 grip-add b
    2041 grip-checkout trunk
    2041 grip-checkout new

    2041 grip-commit -m "second"
    2041 grip-log
    #Test checkout index
    2041 grip-show :b
} > temp2041 2>&1

# Compare the files and output result
if diff temp temp2041 > /dev/null 2>&1; then
    echo "pass"
else
    diff temp temp2041
fi

