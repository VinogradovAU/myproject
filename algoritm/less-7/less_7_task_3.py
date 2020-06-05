# 3). Массив размером 2m + 1, где m — натуральное число, заполнен случайным образом. Найдите в массиве медиану.
# Медианой называется элемент ряда, делящий его на две равные части: в одной находятся элементы, которые не
# меньше медианы, в другой — не больше медианы.
import random

m = 6  # задать для генерации массива по формуле 2*m + 1

mass = []
mass_c = []
for k in range(2 * m + 1):
    mass.append(random.randint(1, 10))

print(f'исходный массив: {mass}')

mass_c = mass.copy()


def mediana(mass):
    m = int((len(mass) - 1) / 2)

    for k in range(len(mass)):
        count_min = 0
        count_max = 0
        for j in range(len(mass)):
            if k != j:
                if mass[k] <= mass[j]:
                    count_min += 1
                if mass[k] > mass[j]:
                    count_max += 1
        print(f'для числа {mass[k]} max={count_max}, min={count_min}')
        if count_min == m and count_max == m:
            return mass[k]

    for k in range(len(mass)):
        count_min = 0
        count_max = 0
        for j in range(len(mass)):
            if k != j:
                if mass[k] < mass[j]:
                    count_min += 1
                if mass[k] >= mass[j]:
                    count_max += 1
        print(f'для числа {mass[k]} max={count_max}, min={count_min}')
        if count_min == m and count_max == m:
            return mass[k]

    return None


def mediana_2(mass):
    m = int((len(mass) - 1) / 2)

    for k in range(len(mass)):
        count_min = 0
        count_max = 0
        ss = 0
        for j in range(len(mass)):
            if k != j:
                if mass[k] >= mass[j] and count_max < m:
                    count_max += 1
                    if mass[k] == mass[j]:
                        ss += 1

        for j in range(len(mass)):
            if k != j:
                if mass[k] <= mass[j] and count_min < m:
                    if mass[k] == mass[j]:
                        if ss > 0:
                            ss -= 1
                        else:
                            count_min += 1
                            continue
                    count_min += 1

        print(f'для числа {mass[k]} max={count_max}, min={count_min}')
        if count_min == m and count_max == m:
            return mass[k]

    return None


print(f'Медиана в массиве: {mediana_2(mass)}')
print()
print(f'Проверим на отсортированном массиве:')
mass_c.sort()
print(mass_c)

# функция mediana_2() учитывает одинаковые элементы слева и справа. Функция mediana() в такой ситуации не могла найти медиану
# исходный массив: [9, 10, 3, 2, 7, 1, 5, 4, 9, 4, 4, 4, 1]
# для числа 9 max=6, min=2
# для числа 10 max=6, min=0
# для числа 3 max=3, min=6
# для числа 2 max=2, min=6
# для числа 7 max=6, min=3
# для числа 1 max=1, min=6
# для числа 5 max=6, min=4
# для числа 4 max=6, min=6
# Медиана в массиве: 4
#
# Проверим на отсортированном массиве:
# [1, 1, 2, 3, 4, 4, 4, 4, 5, 7, 9, 9, 10]