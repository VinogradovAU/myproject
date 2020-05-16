# https://app.diagrams.net/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&page-id=D4vCSPD4o9B4h8Km3Lkl&title=lesson_2#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1oqjejCmAcK220vNU4lrkN6D77-34MiOX%26export%3Ddownload

# 4. Найти сумму n элементов следующего ряда чисел: 1, -0.5, 0.25, -0.125,…
# Количество элементов (n) вводится с клавиатуры.

x = 1
sum = 0
n = int(input('Введите n: '))

for k in range(0, n):
    print(x)
    sum = sum + x
    x = x / 2 * (-1)

print(f'Сумма элементов ряда: {sum}')

# Сумма элементов ряда: 0.6666666666666667 (дьявольское число 666)
