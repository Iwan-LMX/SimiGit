#! /bin/dash
# This is for test grip-rm and grip commit
rm .grip
grip-commit -m dfdf

touch a
grip-add :a

grip-rm --force a

grip-commit -m dffdfd
