# https://app.diagrams.net/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&page-id=D4vCSPD4o9B4h8Km3Lkl&title=lesson_2#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1oqjejCmAcK220vNU4lrkN6D77-34MiOX%26export%3Ddownload

# 2. Посчитать четные и нечетные цифры введенного натурального числа. Например, если введено число 34560,
# # в нем 3 четные цифры (4, 6 и 0) и 2 нечетные (3 и 5).

while True:

    a = 0  # переменная для суммы четных числе
    b = 0  # переменная для суммы нечетных числе
    x = input("введите натуральное число: ")
    xx = x  # сохраним число для принта в конце
    if str(x) == 'q':
        print('ВЫХОД')
        break

    if x.isdigit() != True or int(x) == 0  or int(x) < 0:
        print(f'{x} не натуральное число. Попробуйте еще раз')
        continue
    x = int(x)

    while True:

        #if (x % 10) % 2 == 0:
        if x % 2 == 0:
            a = a + 1
        else:
            b = b + 1
        x = x // 10
        if x == 0:
            print(f'Число {xx} содержит количество четных цифр - {a}, нечетных - {b}')
            break

