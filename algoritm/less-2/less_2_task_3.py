# https://app.diagrams.net/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&page-id=D4vCSPD4o9B4h8Km3Lkl&title=lesson_2#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1oqjejCmAcK220vNU4lrkN6D77-34MiOX%26export%3Ddownload

# 3. Сформировать из введенного числа обратное по порядку входящих в него цифр и вывести на экран.
# Например, если введено число 3486, надо вывести 6843

def my_revirse(x):
    if x // 10 == 0:
        return str(x)
    else:
        return str(x % 10) + str(my_revirse(x // 10))


a = int(input('Введите целое число: '))
z = my_revirse(a)
print(a, '--->', int(z))

# Введите целое число: 100500
# 100500 ---> 5001
