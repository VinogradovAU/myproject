# -*-coding:utf8; -*-

"""
Создать (программно) текстовый файл, записать в него программно набор чисел, разделенных пробелами.
Программа должна подсчитывать сумму чисел в файле и выводить ее на экран.

"""
print('Задание 5.5')

import random, json



with open('test5-5.txt', 'w') as f:

    rand_list = ''
    for el in range(3):
        rand_list = rand_list + str(random.randint(20, 100)) + ' '

    print('Сгенерировали последовательность:')
    print(rand_list)
    f.write(rand_list)
    print('Запись в файл test5-5.txt завершена')

with open('test5-5.txt', 'r') as f:
    str_list = f.readline().split()
    num_list = [int(el) for el in str_list]
    print('Читаем из файла test5-5.txt последовательность и переводим в список. Разделитель пробел.')
    print(num_list)
    print(f'Сумма всех чисел последовательности: {sum(num_list)}')

