#!/bin/bashxs
cd /Users/arslanginiatullin/Desktop/ИТМО
file="*"
if [-f "$file" ]
then
    for word in $(cat $file);
    do echo $word; done 
done
