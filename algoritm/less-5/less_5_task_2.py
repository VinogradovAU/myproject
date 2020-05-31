# Написать программу сложения и умножения двух шестнадцатеричных чисел. При этом каждое число представляется
# как коллекция, элементы которой — цифры числа. Например, пользователь ввёл A2 и C4F. Нужно сохранить их
# как [‘A’, ‘2’] и [‘C’, ‘4’, ‘F’] соответственно. Сумма чисел из примера: [‘C’, ‘F’, ‘1’],
# произведение - [‘7’, ‘C’, ‘9’, ‘F’, ‘E’].

from collections import deque


def hex_append(num, summ_):
    if num == 15:
        summ_.appendleft('F')
    elif num == 14:
        summ_.appendleft('E')
    elif num == 13:
        summ_.appendleft('D')
    elif num == 12:
        summ_.appendleft('C')
    elif num == 11:
        summ_.appendleft('B')
    elif num == 10:
        summ_.appendleft('A')
    elif num < 10:
        summ_.appendleft(num)

    return summ_


def convert(x):
    if x == 'A':
        return 10
    elif x == 'B':
        return 11
    elif x == 'C':
        return 12
    elif x == 'D':
        return 13
    elif x == 'E':
        return 14
    elif x == 'F':
        return 15
    elif int(x) < 10:
        return int(x)


# a = deque('75CD')
# b = deque('2A')
summ_ = deque()

a = deque(input('Введите 1-е hex число: '))
b = deque(input('Введите 2-е hex число: '))

print(a)
print(b)

accumulator = 0

while True:

    if len(a) > 0:
        j = convert(a.pop())
    else:
        j = 0
    if len(b) > 0:
        k = convert(b.pop())
    else:
        k = 0

    x = int(j) + int(k)

    if x > 16:
        if accumulator == 0:
            summ_ = hex_append(x - 16, summ_)
            accumulator = 1
        else:
            summ_ = hex_append(x - 16 + 1, summ_)
            accumulator = 1

    if x == 16:
        if accumulator != 1:
            summ_.appendleft(0)
            accumulator = 1
    if x < 16:
        if accumulator == 0:
            summ_ = hex_append(x, summ_)
        else:
            summ_ = hex_append(x + 1, summ_)
            accumulator = 0

    if len(a) != 0 and len(b) == 0:
        summ_.appendleft(a.pop())

    elif len(a) == 0 and len(b) != 0:
        summ_.appendleft(b.pop())


    if len(a) == 0 and len(b) == 0:
        break

print(summ_)
