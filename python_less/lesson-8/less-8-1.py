# -*-coding:utf8; -*-

"""
 Реализовать класс «Дата», функция-конструктор которого должна принимать дату в виде строки формата «день-месяц-год».
 В рамках класса реализовать два метода. Первый, с декоратором @classmethod, должен извлекать число, месяц, год и
 преобразовывать их тип к типу «Число». Второй, с декоратором @staticmethod, должен проводить валидацию числа,
 месяца и года (например, месяц — от 1 до 12). Проверить работу полученной структуры на реальных данных.

"""

print('Задание 8.1')


class MyData:
    ''' data_now передается в формате "день-месяц-год" '''

    def __init__(self, data_in='01-01-1900'):
        self.data_in = data_in

    @classmethod
    def convert_data(cls, arg='02-03-2020'):
        try:
            c_data = [int(x) for x in arg.split('-')]
        except:
            print('Ошибка формата ввода данных день-месяц-год. Перевод в int не выполнен')
            err_data = [1, 1, 1900]
            return err_data
        else:
            return c_data

    @staticmethod
    def valid_data(arg='28-01-2030'):
        in_data = MyData.convert_data(arg)

        if 0 < in_data[0] < 31 and 0 < in_data[1] <= 12 and 1900 < in_data[2] < 2021:
            return in_data
        else:
            print('Ошибка ввода данныых: день - от 1 до 30, месяц - от 1 до 12, год - от 1900 до 2020')
            err_data = [1, 1, 1900]
            return err_data


print('---------вызов методов напрямую---------------')
print(MyData.convert_data('10-10-1910'))
print(MyData.valid_data('11-11-1111'))

print('---------вызов методов через экземпляр класса---------------')
my = MyData()
print(my.convert_data('12-12-1912'))
print(my.valid_data('11-12-цуац'))
