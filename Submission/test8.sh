#! /bin/dash
# This is for test grip-status
rm .grip
./grip-status

./grip-init
./grip-status df

touch 3$.txt
touch a
./grip-status

./grip-add a
./grip-status
rm a
./grip-status