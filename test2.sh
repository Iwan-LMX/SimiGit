./grip-init
echo 1 >a
echo 2 >b
echo 3 >c
2041 grip-add a b c
2041 grip-commit -m "first commit"
echo 4 >>a
echo 5 >>b
echo 6 >>c
echo 7 >d
echo 8 >e
./grip-add b c d e
echo 9 >b
echo 0 >d
./grip-rm --cached a c
./grip-rm --force --cached b
./grip-rm --force --cached e
./grip-rm --force d
./grip-status