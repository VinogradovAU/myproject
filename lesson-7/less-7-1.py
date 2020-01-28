# -*-coding:utf8; -*-

"""
Реализовать класс Matrix (матрица). Обеспечить перегрузку конструктора класса
(метод init()), который должен принимать данные (список списков) для формирования матрицы.

Следующий шаг — реализовать перегрузку метода str() для вывода матрицы в привычном виде.

Далее реализовать перегрузку метода add() для реализации операции сложения двух объектов
класса Matrix (двух матриц). Результатом сложения должна быть новая матрица.
"""

print('Задание 7.1')

class MyClass():

    def __init__(self, matrix=[]):
        self.matrix = matrix

    def __str__(self):
        matrix = ''
        for line in self.matrix:
            matrix += f'{line}\n'
        return matrix

    def __add__(self, other):

        for key1 in range(len(self.matrix)):

            for key2 in range(len(self.matrix[key1])):

                    self.matrix[key1][key2]+= other[key1][key2]

        print('Выполнено сложение матриц.')


matrix1 = [[1,2], [3,4]] # матрица
matrix2 = [[1,1], [1,1]] # матрица

my = MyClass(matrix1)
print(f'Вывод атрибута martix из __init__ --> {my.matrix}')
print(f'Вывод метода __str__-->\n{my}')
my + matrix2
print(f'Вывод метода __str__-->\n{my}')



