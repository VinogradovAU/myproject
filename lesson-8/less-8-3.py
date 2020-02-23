# -*-coding:utf8; -*-

"""
Создайте собственный класс-исключение, который должен проверять содержимое списка
на наличие только чисел. Проверить работу исключения на реальном примере. Необходимо
запрашивать у пользователя данные и заполнять список. Класс-исключение должен
контролировать типы данных элементов списка

"""

print('Задание 8.3')




class OwnError(Exception):
    def __init__(self, txt):
        self.txt = txt

my_list = []
while True:

    inp_data = input('Введите число или stop для завершения: ')
    try:
        if inp_data == 'stop':
            print(my_list)
            break
        inp_data = int(inp_data)

    except ValueError:
        print('Вы ввели не число, попробуйте еще.')

    except OwnError as err:
        print(err)
    else:
        my_list.append(inp_data)

        print('Все ок')
