# -*-coding:utf8; -*-

"""
1. Создать класс TrafficLight (светофор) и определить у него один атрибут
color (цвет) и метод running (запуск). Атрибут реализовать как приватный.
В рамках метода реализовать переключение светофора в режимы: красный, желтый,
зеленый. Продолжительность первого состояния (красный) составляет 7 секунд,
второго (желтый) — 2 секунды, третьего (зеленый) — на ваше усмотрение.
Переключение между режимами должно осуществляться только в указанном порядке
(красный, желтый, зеленый). Проверить работу примера, создав экземпляр и
вызвав описанный метод.
"""

print('Задание 6.1')

import time

from itertools import *


class TrafficLight:

    def __init__(self):
        self.__color = 'Red'

    def running(self):
        print('Запуск светофора....')
        color_list = [self.__color, 'yellow', 'green']
        time_interval = [7, 2, 2]
        my_dict = dict(zip(color_list, time_interval))
        stop = 0
        for el in cycle(my_dict.items()):
            print(el[0])
            time.sleep(el[1])
            stop += 1
            if stop == 10:
                break


a = TrafficLight()
a.running()
