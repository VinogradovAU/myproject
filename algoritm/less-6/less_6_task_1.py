# 2. Посчитать четные и нечетные цифры введенного натурального числа. Например, если введено число 34560,
# # в нем 3 четные цифры (4, 6 и 0) и 2 нечетные (3 и 5).

import sys

# вариант № 1 (использование int + переменные)
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


a = 0  # переменная для суммы четных числе
b = 0  # переменная для суммы нечетных числе
x = input("введите натуральное число: ")
xx = x  # сохраним число для принта в конце

if x.isdigit() != True or int(x) == 0 or int(x) < 0:
    print(f'{x} не натуральное число. Попробуйте еще раз')
    exit(1)

x = int(x)

while True:

    if x % 2 == 0:
        a = a + 1
    else:
        b = b + 1
    x = x // 10
    if x == 0:
        print(f'Число {xx} содержит количество четных цифр - {a}, нечетных - {b}')
        size_obj()
        break
# введите натуральное число: 234345234523452345345
# Число 234345234523452345345 содержит количество четных цифр - 10, нечетных - 11
# Общий занятый объем памяти: 540 байт
#
# Process finished with exit code 0

# Python 3.8.1 (tags/v3.8.1:1b293b6, Dec 18 2019, 22:39:24) [MSC v.1916 32 bit (Intel)] on win
# 32

# введите натуральное число: 234345234523452345345
# Число 234345234523452345345 содержит количество четных цифр - 10, нечетных - 11
# Переменная/объект size_obj занимает 68
# Переменная/объект a занимает 14
# Переменная/объект b занимает 14
# Переменная/объект x занимает 12
# Переменная/объект xx занимает 46
# Переменная/объект summ_size = 154 занимает 14
# Переменная/объект k = k занимает 26
# **************************************************
# Локальные и глобальные переменные заняли: 194 байт
#
# Process finished with exit code 0