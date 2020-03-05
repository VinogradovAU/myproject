#! /bin/bash

echo 'welcome to lesson 5 task 2'

Usage(){
echo Usage:
echo    - $0 [OPTION] [logfile]
echo [OPTION] -f, --help
echo    'monitoring logfile /var/log/auth.log'
echo Example: $0 -f /var/log/auth.log
}


[ $# == 0 ]&&tail -f /var/log/auth.log&
[ $1 == "--help" ]&&Usage && exit 0


if [ $1 == "-f" ]; then
        [ -f $2 ]&& tail $1 $2 &
        [ -f $2 ]||echo 'wrong file' && Usage && exit 1
else
        [ -f $1 ]&& tail $1 &
        [ -f $1 ]||echo 'wrong file' && Usage && exit 3
fi
