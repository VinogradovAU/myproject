# -*-coding:utf8;-*-

"""
2. Представлен список чисел. Необходимо вывести элементы исходного списка,
значения которых больше предыдущего элемента.

Подсказка: элементы, удовлетворяющие условию, оформить в виде списка. Для
формирования списка использовать генератор.
"""

print("Задание 2")

my_list = [1, 6, 5, 2, 10, 12, 16, 3, 5]

new_list = [x for i, x in enumerate(my_list) if x > my_list[i - 1]]

print(my_list)
print(new_list)