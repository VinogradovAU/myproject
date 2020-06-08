# 2). Отсортируйте по возрастанию методом слияния одномерный вещественный массив, заданный
# случайными числами на промежутке [0; 50). Выведите на экран исходный и отсортированный массивы.

import random

mass = []

for k in range(10):
    mass.append(round(random.uniform(0, 50), 2))
print()
print()
print(f'исходный массив:        {mass}')


def merge(mass_1, mass_2):
    res = []
    while len(mass_1) > 0 and len(mass_2) > 0:
        if mass_1[0] <= mass_2[0]:
            res.append(mass_1[0])
            mass_1 = mass_1[1:]
        else:
            res.append(mass_2[0])
            mass_2 = mass_2[1:]

    while len(mass_1) > 0:
        res.append(mass_1[0])
        mass_1 = mass_1[1:]

    while len(mass_2) > 0:
        res.append(mass_2[0])
        mass_2 = mass_2[1:]

    return res



def merge_sort(mass):
    if len(mass) == 1:
        return mass
    k = len(mass) // 2
    mass_1 = mass[:k]
    mass_2 = mass[k:]
    # print(mass_1)
    # print(mass_2)
    mass_1 = merge_sort(mass_1)
    mass_2 = merge_sort(mass_2)
    resume = merge(mass_1, mass_2)
    # print(f'resume={resume}')
    return resume


# mass_1 = [4, 7, 12, 17]
# mass_2 = [1, 3, 11, 18]
# print(merge(mass_1, mass_2))

print(f'отсортированный массив: {merge_sort(mass)}')
