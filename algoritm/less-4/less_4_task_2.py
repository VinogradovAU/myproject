# 2). Написать два алгоритма нахождения i-го по счёту простого числа. Функция нахождения простого
# числа должна принимать на вход натуральное и возвращать соответствующее простое число.
#     Проанализировать скорость и сложность алгоритмов. Первый — с помощью алгоритма «Решето Эратосфена».

import random
import timeit
import cProfile


def sieve(p, list_tmp, SIZE):
    len_list_1 = len(list_tmp)  # добавил в вариант 2

    for key_1, k in enumerate(list_tmp, 0):  # прохожу по листу
        if key_1 > len_list_1:  # В 1 варианте был if key_1 > len(list_tmp):
            break
        else:
            for j in range(2, SIZE + 1):  # нахожу элементы  p*n ( р - очередное просто число в листе начиная с 2 , n от 1 до SIZE+1)

                if p * j > list_tmp[-1]:  # ВАРИАНТ 3 - Добавил ограничение, чтобы не делать лишних проверок
                    break

                if k == p * j:
                    del list_tmp[key_1]  # найдя элементы p*n  удаляю его из списка

    return list_tmp  # возвращяю новый прореженный список конкретным p


def main_func(prime, SIZE):
    list_tmp = [x for x in range(2, SIZE + 1)]
    p = 2  # первое простое число

    while True:

        list_tmp = sieve(p, list_tmp, SIZE)
        len_list_2 = len(list_tmp)  # добавил в вариант 2
        for key, j in enumerate(list_tmp, 0):
            if j == p:
                if key + 1 < len_list_2:  # В 1 варианте был if key + 1 < len(list_tmp):
                    p = list_tmp[key + 1]
                    break

        if p == list_tmp[-1]:
            break
    if prime - 1 > len(list_tmp):
        print(f'Число {prime} находится вне диапазона')
        print(f'В диапазоне от 1 до {SIZE} находится {len(list_tmp)} простых чисел')
        return 0
    return list_tmp[prime - 1]

prime = 2000  # порядковый номер простого числа
SIZE = 10000  # размер решета
print(main_func(prime, SIZE))


#cProfile.run('main_func(prime, SIZE)')
#    Ordered by: standard name
#
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    1.992    1.992 <string>:1(<module>)
#       167    1.987    0.012    1.990    0.012 less_4_task_2.py:10(sieve)
#         1    0.001    0.001    1.992    1.992 less_4_task_2.py:22(main_func)
#         1    0.000    0.000    0.000    0.000 less_4_task_2.py:23(<listcomp>)
#         1    0.000    0.000    1.992    1.992 {built-in method builtins.exec}
#     28987    0.003    0.000    0.003    0.000 {built-in method builtins.len}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

# print(timeit.timeit('main_func(20, 100)', number=100, globals=globals()))  # 0.3825772
# print(timeit.timeit('main_func(20, 1000)', number=100, globals=globals()))  # 214.90018139999998
# # print(timeit.timeit('main_func(20, 10000)', number=100, globals=globals()))  # не дождался
# print('*' * 50)


# ВЫНЕС len() из циклов получил результат:
#cProfile.run('main_func(prime, SIZE)')
#    Ordered by: standard name
#
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    2.045    2.045 <string>:1(<module>)
#       167    2.043    0.012    2.043    0.012 less_4_task_2.py:10(sieve)
#         1    0.001    0.001    2.045    2.045 less_4_task_2.py:23(main_func)
#         1    0.000    0.000    0.000    0.000 less_4_task_2.py:24(<listcomp>)
#         1    0.000    0.000    2.045    2.045 {built-in method builtins.exec}
#       335    0.000    0.000    0.000    0.000 {built-in method builtins.len}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

# после оптимизации :
# print(timeit.timeit('main_func(20, 100)', number=100, globals=globals()))  # 0.4089912
# print(timeit.timeit('main_func(20, 1000)', number=100, globals=globals()))  # 205.9980496  (на 10 с быстрее)
# # print(timeit.timeit('main_func(20, 10000)', number=100, globals=globals()))  # не дождался

# ВАРИАНТ 3 добавил ограничениена поиска чисел p*n в решите
#cProfile.run('main_func(prime, SIZE)')
#    Ordered by: standard name
#
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.104    0.104 <string>:1(<module>)
#       167    0.103    0.001    0.103    0.001 less_4_task_2.py:10(sieve)
#         1    0.001    0.001    0.104    0.104 less_4_task_2.py:29(main_func)
#         1    0.000    0.000    0.000    0.000 less_4_task_2.py:30(<listcomp>)
#         1    0.000    0.000    0.104    0.104 {built-in method builtins.exec}
#       335    0.000    0.000    0.000    0.000 {built-in method builtins.len}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

# print(timeit.timeit('main_func(20, 100)', number=100, globals=globals()))  # 0.1050719
# print(timeit.timeit('main_func(20, 1000)', number=100, globals=globals()))  # 10.5331106  (в 20 раз быстрее)
# print(timeit.timeit('main_func(20, 10000)', number=100, globals=globals()))  # не дождался