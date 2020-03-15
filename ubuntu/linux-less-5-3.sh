#! /bin/bash

echo 'все аргументы '$@
echo 'количество аргументов '$#

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

count=0
ARGS=0
PREF=0
DIR[0]=$(pwd)

if (($#==0)); then

#echo 'empty'
Usage
exit 0
fi

for el in $@

do
        case $el in
        --help)
        Usage
        exit 0
        ;;
        '-d')
        PREF=$PREF+1  #указатель на создание\существование директории
        echo 'pref+1'
        continue
        ;;
        /*)
        echo "тут $el directory"
        #проверяем есть ли директория
        [ -d $(pwd)$el ]&&echo "директория существует" && PREF=$PREF+1 && DIR[0]=$(pwd)$el && continue
        if (($PREF<2)); then   #директории нет. создаем
                echo "PREF<2"
                [ -d "$el" ]||echo "создаем директорию" && mkdir $(pwd)$el && DIR[0]=$(pwd)$el && echo continue
        fi
        ;;
        *)

        echo "files..." ${DIR[${#DIR[@]}]}/$el
        [ -f ${DIR[0]} ]&&echo "файл "$el "уже существует. Не создаем!" && continue
        [ -f ${DIR[0]} ]||echo "файл в массив" && FILE_M+=($el)

        esac

done
#echo 'все аргументы '${ARGS[@]}
#echo 'директория '${DIR[@]}
#echo 'файлы '${FILE_M[@]}
#echo 'pref '${PREF}

for el in ${FILE_M[@]}
do
touch ${DIR[0]}/$el && [[ $el == *.sh ]]&&chmod +x ${DIR[0]}/$el
done


