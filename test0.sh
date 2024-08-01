#! /bin/dash
# This is for test grip-rm and grip commit
# My code temp
{
    rm .grip
    ./grip-commit -m dfdf
    touch a
    ./grip-add :a
    ./grip-rm --force a
    ./grip-commit -m dffdfd
} > temp 2>&1

# correct 
{
    rm .grip
    2041 grip-commit -m dfdf
    touch a
    2041 grip-add :a
    2041 grip-rm --force a
    2041 grip-commit -m dffdfd
} > temp2041 2>&1

# Compare the files and output result
if diff temp temp2041 > /dev/null 2>&1; then
    echo "pass"
else
    diff temp temp2041
fi

