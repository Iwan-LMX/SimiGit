#! /bin/dash
# This is for test grip-branch
rm .grip
./grip-branch

./grip-init
./grip-branch

./grip-branch -d
./grip-branch df
./grip-branch

./grip-branch -d fdfdfd
./grip-branch -d df

./grip-branch new branch
./grip-branch "new branch"
./grip-branch "newbranch"