#!/bin/bash

# cat $<argument_number>
# replaces de string from the cat argument catnip tp dogchow
# first we translate the file with ./tranlate.sh kitty_ipsum_1.txt then we do the grep -- color word to see if it remains untranslated
# g is the global regex flag that allows different instances of the same word
# -E flag extends the characters it allows it the search like the | used on this case 
cat $1 | sed -E 's/catnip/dogchow/g; s/cat/dog/g; s/meow|meowzer/woof/g'

# to print the translation we use ./translate.sh kitty_ipsum_1.tx >> doggy_ipsum_1.txt 
# once working we can use diff to see the difference between the translation (doggy_ipsum_1.txt)and the original (kitty_ipsum_1.txt)
# with diff --color shows the differences with color

