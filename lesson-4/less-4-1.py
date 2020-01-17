# -*-coding:utf8;-*-
"""
Реализовать скрипт, в котором должна быть предусмотрена функция расчета заработной платы сотрудника.
В расчете необходимо использовать формулу: (выработка в часах * ставка в час) + премия. Для
выполнения расчета для конкретных значений необходимо запускать скрипт с параметрами.
"""
print("Задание №1")

import sys
# time_job - отработанное время в часах
# price - цена 1 часа работы
# bonus - премия

def bonus(time_job=1, price=1000, bonus=500):
    return round(time_job * price + bonus, 2)

if (len(sys.argv) == 4):
    try:
        print(f'Отработано часов: {int(sys.argv[1])}. Расченка часа: {int(sys.argv[2])}. Премия: {int(sys.argv[3])} ')
        print(f'Итого: {bonus(int(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3]))} руб.')
    except TypeError:
        print('Ошибка ввода данных')
elif (len(sys.argv) == 3):
    try:
        print(f'Отработано часов: {int(sys.argv[1])}. Расченка часа: {int(sys.argv[2])}. Премия: По умолчанию 500! ')
        print(f'На руки выдать: {bonus(int(sys.argv[1]), int(sys.argv[2]))} деревянных.')
    except TypeError:
        print('Ошибка ввода данных')