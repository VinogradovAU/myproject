# В массиве случайных целых чисел поменять местами минимальный и максимальный элементы.
import random

SIZE = 10
MIN_ITEM = 0
MAX_ITEM = 200
array = [random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE)]

#array = [77, 58, 75, 174, 185, 185, 183, 0, 120, 0] проверка с одинаковыми значениями
#array = [0, 0, 0]

print(f'исходный массив: {array}')

min_el = array[0]
max_el = array[0]

index_a = 0
index_min = 0
index_max = 0

for k in array:
    if k < min_el:
        min_el = k
        index_min = index_a
    if k > max_el:
        max_el = k
        index_max = index_a
    index_a = index_a + 1

print(f'Минимальный элемент: {min_el}, его место {index_min}')
print(f'Максимальный элемент: {max_el}, его место {index_max}')

array[index_min], array[index_max] = array[index_max], array[index_min]
print(f'поменяли местами мин и мах значения:{array}')
