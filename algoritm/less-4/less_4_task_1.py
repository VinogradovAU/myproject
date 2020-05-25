# 4. Определить, какое число в массиве встречается чаще всего.

import random
import timeit
import cProfile


def max_count_num(n):
    SIZE = n
    MIN_ITEM = 0
    MAX_ITEM = 10
    array = [random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE)]

    # print(f'исходный массив: {array}')

    mass_a = [x for x in
              range(MIN_ITEM, MAX_ITEM + 1)]  # тут храним массив чисел, которые могут быть в исходном массиве
    mass_b = []  # тут храним количесвто повторений для каждой цифры или числа

    for k in mass_a:
        count = 0
        for i in array:
            if k == i:
                count = count + 1
        mass_b.append(count)

    # for key, k in enumerate(mass_a, 0):
    #     print(f'{k} встречается {mass_b[key]} раза')
    #
    # print(mass_a)
    # print(mass_b)

    # ищем максимальное число - сколько раз встречается какое-то число
    max_num = 0
    for i in mass_b:
        if i > max_num:
            max_num = i

    index_i = []  # тут храим индексы чисел, которые встречаются больше всего (одинаковое количество раз)

    for key, k in enumerate(mass_b, 0):
        if k == max_num:
            index_i.append(key)

    if len(index_i) < 2:
        # print(f'ОТВЕТ: число {mass_a[index_i[0]]} встречается больше остальных')
        return mass_a[index_i[0]]
    else:
        # print (f'больше остальных встречаются числа: ', end='')
        for k in index_i:
            # print(f' {mass_a[k]}', end='')
            return mass_a[k]


# print(timeit.timeit('max_count_num(10)', number=1000, globals=globals()))       # 0.0185156
# print(timeit.timeit('max_count_num(100)', number=1000, globals=globals()))      # 0.1312912
# print(timeit.timeit('max_count_num(1000)', number=1000, globals=globals()))     # 1.2863685
# print(timeit.timeit('max_count_num(10000)', number=1000, globals=globals()))    # 12.8095149
# print('*'* 50)

# print(max_count_num(10))
# print(max_count_num(100))
# print(max_count_num(1000))
# print(max_count_num(10000))

def max_count_num_2(n):  # массивы заменил на словари
    SIZE = n
    MIN_ITEM = 0
    MAX_ITEM = 10
    # array = [random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE)]
    array = {}
    for key, j in enumerate(range(SIZE), 0):
        array[key] = random.randint(MIN_ITEM, MAX_ITEM)
    # print(f'исходный массив: {array}')

    # mass_a = [x for x in range(MIN_ITEM, MAX_ITEM + 1)] # тут храним массив чисел, которые могут быть в исходном массиве
    mass_a = {}
    for key, j in enumerate(range(SIZE), 0):
        mass_a[key] = key

    mass_b = {}  # тут храним количесвто повторений для каждой цифры или числа

    # print(mass_a)

    for k in mass_a:
        count = 0
        for i in array:
            if k == array[i]:
                count = count + 1
        mass_b[k] = count

    # for key, k in enumerate(mass_a, 0):
    #     print(f'{k} встречается {mass_b[key]} раза')

    # ищем максимальное число - сколько раз встречается какое-то число
    max_num = 0
    for i in mass_b:
        if mass_b[i] > max_num:
            max_num = mass_b[i]

    index_i = []  # тут храим индексы чисел, которые встречаются больше всего (одинаковое количество раз)

    for key, k in enumerate(mass_b, 0):
        if mass_b[k] == max_num:
            index_i.append(key)

    # print(index_i)
    if len(index_i) < 2:
        # print(f'ОТВЕТ: число {mass_a[index_i[0]]} встречается больше остальных')
        return mass_a[index_i[0]]
    else:
        # print (f'больше остальных встречаются числа: ', end='')
        max_count = []
        for k in index_i:
            # print(f' {mass_a[k]}', end='')
            max_count.append(mass_a[k])
        return max_count


# print(max_count_num_2(10))
# print(max_count_num_2(100))
# print(max_count_num_2(1000))
# print(max_count_num_2(10000))

# print(timeit.timeit('max_count_num_2(10)', number=1000, globals=globals()))     # 0.021128800000000003
# print(timeit.timeit('max_count_num_2(100)', number=1000, globals=globals()))    # 0.675901
# print(timeit.timeit('max_count_num_2(1000)', number=1000, globals=globals()))   # 51.663638
# print(timeit.timeit('max_count_num_2(10000)', number=1000, globals=globals()))  # устал ждать

def max_count_num_3(n):
    SIZE = n
    MIN_ITEM = 0
    MAX_ITEM = 10
    array = tuple([random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE)])

    # print(f'исходный массив: {array}')

    mass_a = tuple(
        [x for x in range(MIN_ITEM, MAX_ITEM + 1)])  # тут храним массив чисел, которые могут быть в исходном массиве
    mass_b = []  # тут храним количесвто повторений для каждой цифры или числа

    for k in mass_a:
        count = 0
        for i in array:
            if k == i:
                count = count + 1
        mass_b.append(count)

    # for key, k in enumerate(mass_a, 0):
    #     print(f'{k} встречается {mass_b[key]} раза')

    # print(mass_a)
    # print(mass_b)

    # ищем максимальное число - сколько раз встречается какое-то число
    max_num = 0
    for i in mass_b:
        if i > max_num:
            max_num = i

    index_i = []  # тут храим индексы чисел, которые встречаются больше всего (одинаковое количество раз)

    for key, k in enumerate(mass_b, 0):
        if k == max_num:
            index_i.append(key)

    if len(index_i) < 2:
        # print(f'ОТВЕТ: число {mass_a[index_i[0]]} встречается больше остальных')
        return mass_a[index_i[0]]
    else:
        # print (f'больше остальных встречаются числа: ', end='')
        for k in index_i:
            # print(f' {mass_a[k]}', end='')
            return mass_a[k]


# print(timeit.timeit('max_count_num_3(10)', number=1000, globals=globals()))       # 0.0185156
# print(timeit.timeit('max_count_num_3(100)', number=1000, globals=globals()))      # 0.1312912
# print(timeit.timeit('max_count_num_3(1000)', number=1000, globals=globals()))     # 1.2863685
# print(timeit.timeit('max_count_num_3(10000)', number=1000, globals=globals()))    # 12.8095149
# print('*'* 50)

# print(max_count_num_3(10))
# print(max_count_num_3(100))
# print(max_count_num_3(1000))
# print(max_count_num_3(10000))

# массивы или кортежи в данном алгоритме дают одинаковый результат
# применение словарей сильно тормозит работу скрипта , массив из 10000 элементов не дождался расчета

def max_count_num_4(n):  # переиграл алгоритм, попытался сделать поиск и подсчет в один проход (
                         # массив тоже тут пробовал вместо кортежа - изменений скорости не увидел
    SIZE = n
    MIN_ITEM = 0
    MAX_ITEM = 10
    array = tuple(random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE))
    new_list = sorted(array)

    count = 1
    max_count = 1
    num = new_list[0]
    for j in range(len(new_list) - 1):
        if new_list[j] == new_list[j + 1]:
            count += 1
        else:
            if max_count < count:
                max_count = count
                num = new_list[j]
            count = 1

    return new_list, num


# print(max_count_num_4(10))
# print(max_count_num_4(100))
# print(max_count_num_4(1000))
# print(max_count_num_4(10000))

print(timeit.timeit('max_count_num_4(10)', number=1000, globals=globals()))  # 0.012744099999999994
print(timeit.timeit('max_count_num_4(100)', number=1000, globals=globals()))  # 0.1158275
print(timeit.timeit('max_count_num_4(1000)', number=1000, globals=globals()))  # 1.2090172
print(timeit.timeit('max_count_num_4(10000)', number=1000, globals=globals()))  # 11.798758800000002
print('*' * 50)

#  ВЫВОД обработка массима в один проход всегда будет работать быстрее, чем более одного прохода.

def max_count_num_5(n):

    SIZE = n
    MIN_ITEM = 0
    MAX_ITEM = 10
    array = [random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE)]
    #print(array)
    counter = {}
    frequency = 1
    num = None
    for item in array:
        if item in counter:
            counter[item] += 1
        else:
            counter[item] = 1

        if counter[item] > frequency:
            frequency = counter[item]
            num = item

    if num is not None:
        return num
    else:
        return 'Все элементы уникальны'

# print(max_count_num_5(10))
# print(max_count_num_5(100))
# print(max_count_num_5(1000))
# print(max_count_num_5(10000))

print(timeit.timeit('max_count_num_5(10)', number=1000, globals=globals()))  # 0.012024899999999998
print(timeit.timeit('max_count_num_5(100)', number=1000, globals=globals()))  # 0.10824809999999999
print(timeit.timeit('max_count_num_5(1000)', number=1000, globals=globals()))  # 1.0961657
print(timeit.timeit('max_count_num_5(10000)', number=1000, globals=globals()))  # 10.8285272
print('*' * 50)

# ВЫВОД: функция max_count_num_4() работает чуть медленее max_count_num_5(n) - решение преподавателя.
# полагаю, что из-за сортировки массива в 4 функции.
