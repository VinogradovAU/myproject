# -*-coding:utf8; -*-

"""
Создать программно файл в текстовом формате, записать в него построчно данные, вводимые пользователем.
Об окончании ввода данных свидетельствует пустая строка.
"""

print('Задание 5.1')

with open('test.txt', 'w+') as f:
    while True:
        print("Введите данные - строки,  для записи в файл . Чтобы закончить введите пустую строку.")
        data = input()
        if data=="":
            print('Ввод закончен')
            break
        f.write(data + '\n')
    print('Читаю файл для проверки')
    f.seek(0)
    print(f.read())
