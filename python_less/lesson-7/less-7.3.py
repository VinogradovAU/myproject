# -*-coding:utf8; -*-

"""
Реализовать программу работы с органическими клетками. Необходимо создать класс Клетка. В его конструкторе
инициализировать параметр, соответствующий количеству клеток (целое число). В классе должны быть реализованы
методы перегрузки арифметических операторов: сложение (add()), вычитание (sub()), умножение (mul()), деление
(truediv()).Данные методы должны применяться только к клеткам и выполнять увеличение, уменьшение, умножение
и обычное (не целочисленное) деление клеток, соответственно. В методе деления должно осуществляться округление
значения до целого числа.
"""

print('Задание 7.3')

class Cell:
    def __init__(self, count):
        self.count = count

    def __add__(self, other):
        self.count+=other
        return f"Сложение клеток.Результат: {self.count}"

    def __sub__(self, other):
        self.count -= other
        return f"Вычитание клеток.Результат: {self.count}"

    def __mul__(self, other):
        self.count *= other
        return f"Умножение клеток.Результат: {self.count}"

    def __truediv__(self, other):
        self.count /= other
        return f"Деление клеток.Результат: {round(self.count,0)}"

cell = Cell(5)
print(cell.count)
print(cell + 2)
print(cell - 1)
print(cell * 3)
print(cell / 2)


