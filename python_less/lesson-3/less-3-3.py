# -*-coding:utf8;-*-

"""
Реализовать функцию my_func(), которая принимает три позиционных аргумента,
и возвращает сумму наибольших двух аргументов.
"""
print("Задание 3")

def my_func(num1, num2, num3):
    my_list = []
    my_list.append(num1)
    my_list.append(num2)
    my_list.append(num3)
    my_list.sort()
    print(f'{my_list[1]} + {my_list[2]} = {my_list[1] + my_list[2]}')

def my_func2(*args):
    my_list = list(args)
    my_list.sort()
    print(f'{my_list[1]} + {my_list[2]} = {my_list[1] + my_list[2]}')


my_func(11,10,56)
my_func2(2,9,6)



