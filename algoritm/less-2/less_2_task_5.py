# https://app.diagrams.net/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&page-id=D4vCSPD4o9B4h8Km3Lkl&title=lesson_2#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1oqjejCmAcK220vNU4lrkN6D77-34MiOX%26export%3Ddownload

# 8. Посчитать, сколько раз встречается определенная цифра в введенной последовательности чисел.
# Количество вводимых чисел и цифра, которую необходимо посчитать, задаются вводом с клавиатуры.

def sum_sum(i, x):
    s = 0
    while True:
        if (i % 10 == x):
            s = s + 1
        i = i // 10
        if(i==0):
            break
    return s


a = int(input('Введите количество чисел: '))
x = int(input('Введите цифру от 0 до 9 для поиска: '))

sum = 0  # тут будет лежать количество найденных цифр
count = 1  # переменная для счетчика

while True:

    if (count > a):
        print(f'цифра {x} встречается {sum} раз.')
        break
    i = int(input(f'Введите {count} число (всего {a} чисел): '))
    z = sum_sum(i, x)
    sum = sum + z
    count = count + 1
