# Второй — без использования «Решета Эратосфена».
# Примечание. Вспомните классический способ проверки числа на простоту.
# Пример работы программ

import random
import timeit
import cProfile


# 7%2 = 1
def prime(n):
    p = 3  # простое число для начала

    if n == 1:
        return 2
    if n == 2:
        return 3

    count = 2 # счетчик количества простых чисел
    while True:
        p += 1     # начинаем с p=4
        prime = 0  # если 1 то число простое, если 0 то не простое
        for k in range(2, p):
            if p % k == 0:
                prime = 0
                break
            else:
                prime = 1
        if prime == 1:
            count += 1

        if count == n:
            break

    return p


# print(prime(1000))
# cProfile.run('prime(1000)')

#          4 function calls in 0.268 seconds
#
#    Ordered by: standard name
#
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.268    0.268 <string>:1(<module>)
#         1    0.268    0.268    0.268    0.268 less_4_task_3.py:11(prime)
#         1    0.000    0.000    0.268    0.268 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

print(timeit.timeit('prime(10)', number=100, globals=globals()))        # 0.0015892999999999984
print(timeit.timeit('prime(100)', number=100, globals=globals()))       # 0.1639075
print(timeit.timeit('prime(1000)', number=100, globals=globals()))      # 28.9711556
print(timeit.timeit('prime(10000)', number=100, globals=globals()))     # уже 8 минуты жду