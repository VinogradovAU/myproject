
import sys
from memory_profiler import profile


# вариант № 3 (файл less_6_task_3.py) (использование string) + profile
def size_obj():
    summ_size = 0
    for k in globals():
        if '__' not in str(k) and str(k) != 'profile' and str(k) != 'sys':
            #print(f'Переменная/объект {k} = {globals()[str(k)]} занимает {sys.getsizeof(k)} ')
            print(f'Переменная/объект {k} занимает {sys.getsizeof(globals()[str(k)])} ')
            summ_size += sys.getsizeof(globals()[str(k)])

    for k in locals():
        print(f'Переменная/объект {k} = {locals()[str(k)]} занимает {sys.getsizeof(locals()[str(k)])} ')
        summ_size += sys.getsizeof(locals()[str(k)])

    print('*' * 50)
    print(f'Локальные и глобальные переменные заняли: {summ_size} байт')

@profile
def my_func():
    a = 0  # переменная для суммы четных числе
    b = 0  # переменная для суммы нечетных числе
    x = input("введите натуральное число: ")

    if x.isdigit() != True or int(x) == 0 or int(x) < 0:
        print(f'{x} не натуральное число. Попробуйте еще раз')
        exit(1)
    xx = str(x)

    for k in xx:
        if int(k) % 2 == 0:
            a = a + 1
        else:
            b = b + 1

    print(f'Число {x} содержит количество четных цифр - {a}, нечетных - {b}')


if __name__ == '__main__':
    my_func()
    size_obj()

# Python 3.8.1 (tags/v3.8.1:1b293b6, Dec 18 2019, 22:39:24) [MSC v.1916 32 bit (Intel)] on win
# 32

# введите натуральное число: 234345234523452345345
# Число 234345234523452345345 содержит количество четных цифр - 10, нечетных - 11
# Filename: D:/ОБУЧЕНИЕ/pythonProject/myprojects/algoritm/less-6/less_6_task_4.py
#
# Line #    Mem usage    Increment   Line Contents
# ================================================
#     22     13.5 MiB     13.5 MiB   @profile
#     23                             def my_func():
#     24     13.5 MiB      0.0 MiB       a = 0  # переменная для суммы четных числе
#     25     13.5 MiB      0.0 MiB       b = 0  # переменная для суммы нечетных числе
#     26     13.5 MiB      0.0 MiB       x = input("введите натуральное число: ")
#     27
#     28     13.5 MiB      0.0 MiB       if x.isdigit() != True or int(x) == 0 or int(x) < 0:
#     29                                     print(f'{x} не натуральное число. Попробуйте еще раз')
#     30                                     exit(1)
#     31     13.5 MiB      0.0 MiB       xx = str(x)
#     32
#     33     13.5 MiB      0.0 MiB       for k in xx:
#     34     13.5 MiB      0.0 MiB           if int(k) % 2 == 0:
#     35     13.5 MiB      0.0 MiB               a = a + 1
#     36                                     else:
#     37     13.5 MiB      0.0 MiB               b = b + 1
#     38
#     39     13.5 MiB      0.0 MiB       print(f'Число {x} содержит количество четных цифр - {a}, нечетных - {b}')
#
#
# Переменная/объект size_obj занимает 68
# Переменная/объект my_func занимает 68
# Переменная/объект summ_size = 136 занимает 14
# Переменная/объект k = k занимает 26
# **************************************************
# Локальные и глобальные переменные заняли: 176 байт
#
# Process finished with exit code 0

# Странно, меньше памяти на переменные используется если обернуть в код в функцию. Или может так profiler влияет!?
#  сравниваю с кодом в фале less_6_task_3.py