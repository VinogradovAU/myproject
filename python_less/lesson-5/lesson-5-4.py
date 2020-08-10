# -*-coding:utf8; -*-

"""
Создать (не программно) текстовый файл со следующим содержимым:
One — 1
Two — 2
Three — 3
Four — 4
Необходимо написать программу, открывающую файл на чтение и считывающую построчно данные.
При этом английские числительные должны заменяться на русские.
Новый блок строк должен записываться в новый текстовый файл.

"""
print('Задание 5.4')

with open('test4-1.txt', 'r', encoding="utf-8") as f:
    new_block = []
    for line in f.readlines():
        print(line, end='')
        if('One' in line):
            line = line.replace('One', 'Один')
            new_block.append(line)
        if ('Two' in line):
            line = line.replace('Two', 'Два')
            new_block.append(line)
        if ('Three' in line):
            line = line.replace('Three', 'Три')
            new_block.append(line)
        if ('Four' in line):
            line = line.replace('Four', 'Четыре')
            new_block.append(line)
print('\n', new_block)
print('Запись в файл test4-2.txt ....')
with open('test4-2.txt', "w", encoding="utf-8") as f:
    for el in new_block:
        f.write(el)
