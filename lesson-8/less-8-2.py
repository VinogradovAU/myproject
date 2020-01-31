# -*-coding:utf8; -*-

"""
 Создайте собственный класс-исключение, обрабатывающий ситуацию деления на нуль. Проверьте его работу на данных,
 вводимых пользователем. При вводе пользователем нуля в качестве делителя программа должна корректно
 обработать эту ситуацию и не завершиться с ошибкой.

"""

print('Задание 8.2')

inp_data = input('Введите положительное число на которое поделится число 4: ')


class OwnError(Exception):
    def __init__(self, txt):
        self.txt = txt

try:
    inp_data = int(inp_data)
    if inp_data == 0:
        raise OwnError('Деление на ноль невозможно!')
    else:
        print('Считаем: 4/', inp_data, '= ', 4/inp_data)
except ValueError:
    print('Вы ввели не число')

except OwnError as err:
    print(err)
else:
    print('Все ок')