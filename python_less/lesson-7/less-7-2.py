# -*-coding:utf8; -*-

"""
Реализовать проект расчета суммарного расхода ткани на производство одежды. Основная сущность
(класс) этого проекта — одежда, которая может иметь определенное название. К типам одежды в
этом проекте относятся пальто и костюм. У этих типов одежды существуют параметры: размер
(для пальто) и рост (для костюма). Это могут быть обычные числа: V и H, соответственно.
Для определения расхода ткани по каждому типу одежды использовать формулы: для пальто (V/6.5 + 0.5),
для костюма (2 * H + 0.3). Проверить работу этих методов на реальных данных.
Реализовать общий подсчет расхода ткани. Проверить на практике полученные на этом уроке знания:
реализовать абстрактные классы для основных классов проекта, проверить на практике работу декоратора @property.
"""

print('Задание 7.2')

from abc import ABC, abstractmethod


class Coat:
    def __init__(self, size=0):
        self.textil = float(size / 6.5 + 0.5)


class Suit:
    def __init__(self, height=0):
        self.textil = float(height * 2 + 0.3)


class NewClothes:
    '''
    Класс реализует методы с сохранением объектов отдельных классов Suit и Coat
    '''
    def __init__(self):
        self.summ = 0
        self.mass = []


    def decor(func):
        '''
        декоратор для расширения функционала метода add_suit
        '''

        def wrapper(self, height):
            print(f'параметры передаваемые в функцию {height}')
            if height =='AAA':
                print('Неверные данные!')
                return_value = func(self, 0)
            else:
                return_value = func(self, height)
            print('Работает декоратор')
            return return_value

        return wrapper

    def add_coat(self, size):
        self.mass.append(Coat(size))

    @decor
    def add_suit(self, height):
        self.mass.append(Suit(height))


    def textile(self):
        summ = self.summ
        for el in self.mass:
            summ += el.textil
        return round(summ, 2)


    def __str__(self):
        return f"Реализация объекта класса {self.__class__.__name__}"


class Clothes(ABC):
    '''
    Абстрактный класс - интерфейс
    '''
    def __init__(self):
        # self.summ = 0 # суммарное количество материала для пошифа разной обежды
        self.mass = [] # список затрат на пошив отдельных видов одежды

    @abstractmethod
    def add_coat(self, size):
        pass

    @abstractmethod
    def add_suit(self, height):
        pass
    @abstractmethod
    def textile(self):
        pass

class MyClothes(Clothes):

    def add_coat(self, size):
        self.mass.append(float(size / 6.5 + 0.5))

    def add_suit(self, height):
        self.mass.append(float(height * 2 + 0.3))

    def textile(self):
        return round(sum(self.mass), 2)

    def __str__(self):
        return f"Реализация объекта класса {self.__class__.__name__}"

cl = NewClothes()
print(cl)
cl.add_suit(1.82)  # пошить костюм
cl.add_suit('AAA')  # пошить костюма. передаю неверные данные для сработки декораторa
cl.add_coat(52)  # пошить пальто
cl.add_coat(42) # пошить пальто
print(cl.textile())  # всего расход материала


ccc = MyClothes()
print(ccc)
ccc.add_suit(1.82) # пошить костюм
ccc.add_coat(52) # пошить пальто
print(ccc.textile()) # всего расход материала


