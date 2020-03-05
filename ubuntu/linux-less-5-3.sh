#! /bin/bash

echo 'welcome to 5 lesson task 3'

Usage(){
echo Usage:
echo    - $0 [OPTION] [filename1] [filename2]....
echo [OPTION]:
echo     -d, --help
echo    'script create file in directory'
echo Example: $0 -d /user/home/dirname file1 file2.sh file3...
echo ''
echo ''
}

echo $@

[ $# == 0 ]&&Usage && exit 0
[ $1 == "--help" ]&&Usage && exit 0


if [ $1 == "-d" ]; then

        [ -d $2 ]||echo 'You must specify a directory' && Usage && exit 1
        for el in $@
                do
                   [ $el == "-d" ]&&continue
                   [ -d  $el ]&&continue

                   [ -f $el ]&&touch '$2/$el'

                   sed '/\.sh/'&& chmod +x $el ||echo 'error change permision'
                done

else
        echo 'key for directory empty'
  for el in $@
                do
                   [ -f $el ]&&echo 'the file exists' && Usage && exit 2
                   [ -f $el ]||touch "$(pwd)/$el" && echo 'file create ok'