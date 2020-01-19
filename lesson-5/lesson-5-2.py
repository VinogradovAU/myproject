# -*-coding:utf8; -*-

"""
Создать текстовый файл (не программно), сохранить в нем несколько строк,
выполнить подсчет количества строк, количества слов в каждой строке.
"""

print('Задание 5.2')

with open("test2.txt", "r", encoding="utf-8") as f:
    lines = f.read().splitlines()
    print(f"Строк в файле {len(lines)}")
    print("---------------------------------")
    print(lines)
    print("---------------------------------")
    for el in lines:
        print(f'{el} - {len(el.split())} слов(а)')

