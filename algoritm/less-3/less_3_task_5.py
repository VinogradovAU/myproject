# 5. В массиве найти максимальный отрицательный элемент. Вывести на экран его значение и позицию в массиве.

import random

SIZE = 10
MIN_ITEM = -10
MAX_ITEM = 10
array = [random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE)]

#array =[8, -3, 7, -9, 5] для теста
print(f'исходный массив: {array}')

mass_a = [] # тут будем хранить элементы меньше 0

# берем все отрицательные числа, цмножаем на -1 и находим самое маленькое. Это и будет самое большое отрицательное число

for k in array:
    if k < 0:
        mass_a.append(k)

#print(mass_a)

min_num = mass_a[0] * (-1)
for k in mass_a:
    if k*(-1) < min_num:
        min_num = k*(-1)
print(f'Самое большое отрицательное число: {min_num*(-1)}')






