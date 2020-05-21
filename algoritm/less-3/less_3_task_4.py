# 4. Определить, какое число в массиве встречается чаще всего.

import random

SIZE = 20
MIN_ITEM = 0
MAX_ITEM = 10
array = [random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE)]

print(f'исходный массив: {array}')

mass_a = [x for x in range(MIN_ITEM, MAX_ITEM + 1)] # тут храним массив чисел, которые могут быть в исходном массиве
mass_b = [] # тут храним количесвто повторений для каждой цифры или числа

for k in mass_a:
    count = 0
    for i in array:
        if k == i:
            count = count + 1
    mass_b.append(count)

for key, k in enumerate(mass_a, 0):
    print(f'{k} встречается {mass_b[key]} раза')

# print(mass_a)
# print(mass_b)

# ищем максимальное число - сколько раз встречается какое-то число
max_num = 0
for i in mass_b:
    if i > max_num:
        max_num = i

index_i = [] # тут храим индексы чисел, которые встречаются больше всего (одинаковое количество раз)

for key, k in enumerate(mass_b,0):
    if k == max_num:
        index_i.append(key)


if len(index_i) < 2:
    print(f'ОТВЕТ: число {mass_a[index_i[0]]} встречается больше остальных')
else:
    print (f'больше остальных встречаются числа: ', end='')
    for k in index_i:
        print(f' {mass_a[k]}', end='')

# ВЫВОД:
# исходный массив: [6, 3, 0, 7, 3, 10, 0, 7, 5, 7, 8, 2, 10, 5, 8, 10, 6, 1, 5, 4]
# 0 встречается 2 раза
# 1 встречается 1 раза
# 2 встречается 1 раза
# 3 встречается 2 раза
# 4 встречается 1 раза
# 5 встречается 3 раза
# 6 встречается 2 раза
# 7 встречается 3 раза
# 8 встречается 2 раза
# 9 встречается 0 раза
# 10 встречается 3 раза
# больше остальных встречаются числа:  5 7 10
# Process finished with exit code 0