# 2. Во втором массиве сохранить индексы четных элементов первого массива. Например, если дан
# массив со значениями 8, 3, 15, 6, 4, 2, второй массив надо заполнить значениями 0, 3, 4, 5,
# (индексация начинается с нуля), т.к. именно в этих позициях первого массива стоят четные числа.

import random

# SIZE_A = 4
# SIZE_B = 7
# MIN_ITEM = 0
# MAX_ITEM = 10
# matrix = [[random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE_B)] for _ in range(SIZE_A)]
# print(*matrix, sep='\n')

SIZE = 10
MIN_ITEM = 0
MAX_ITEM = 100
array = [random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE)]

print(f'исходный массив: {array}')

mass_a = []
index_num = 0

for k in array:
    if k % 2 == 0:
        mass_a.append(index_num)
    index_num = index_num + 1
print(f'индексы четных элементов {mass_a}')

