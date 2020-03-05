#! /bin/bash
# Написать скрипт, который удаляет из текстового файла пустые строки и заменяет маленькие символы на большие
# (воспользуйтесь tr или sed). Скрипт должен выводить информацию о том, как его использовать.

echo 'welcome to lesson 5 task 1'

Usage(){
echo Usage:
echo    - $0 file1.txt file2.txt file3.txt.....
echo    'deletes empty lines in each file'

}


[ $# == 0 ]&&echo 'no args' && Usage && exit 0
[ $1 == "--help" ]&&Usage && exit 0

for f in $*
do
        if [ -f $f ]; then
                sed '/^$/d' $f | tr [:lower:] [:upper:]
        else
                echo '------------wrong file-------->' $f && Usage
        fi

done
