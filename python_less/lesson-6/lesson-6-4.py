# -*-coding:utf8; -*-

"""
Реализовать класс Stationery (канцелярская принадлежность). Определить в нем атрибут
title (название) и метод draw (отрисовка). Метод выводит сообщение “Запуск отрисовки.”
Создать три дочерних класса Pen (ручка), Pencil (карандаш), Handle (маркер). В каждом из
классов реализовать переопределение метода draw. Для каждого из классов методы должен
выводить уникальное сообщение. Создать экземпляры классов и проверить, что выведет
описанный метод для каждого экземпляра.
"""

print('Задание 6.4')


class Stationery:
    def __init__(self, title):
        self.name = title

    def draw(self):
        print('Запуск отрисовки....')


class Pen(Stationery):
    def __init__(self, title='Ручка'):
        self.name = title

    def draw(self):
        print('Ручка пишет....')


class Pencil(Stationery):
    def __init__(self, title='Карандаш'):
        self.name = title

    def draw(self):
        print('Карандаш рисует...')


class Handle(Stationery):
    def __init__(self, title='Маркер'):
        self.name = title

    def draw(self):
        print('Маркер рисует...')

stationary = Stationery('Принадлежность')
stationary.draw()
print('-------------------------------')


pen = Pen('Super Pen')
pen.draw()
print(f'title - {pen.name}')
print('-------------------------------')

pencil = Pencil()
pencil.draw()
print(f'title по умолчанию {pencil.name}')
print('-------------------------------')

handle = Handle()
handle.draw()
print(handle.name)


