# -*-coding:utf8; -*-

"""
 Реализуйте базовый класс Car. У данного класса должны быть следующие атрибуты: speed, color, name,
 is_police (булево). А также методы: go, stop, turn(direction), которые должны сообщать, что
 машина поехала, остановилась, повернула (куда). Опишите несколько дочерних классов: TownCar,
 SportCar, WorkCar, PoliceCar. Добавьте в базовый класс метод show_speed, который должен показывать
 текущую скорость автомобиля. Для классов TownCar и WorkCar переопределите метод show_speed.
 При значении скорости свыше 60 (TownCar) и 40 (WorkCar) должно выводиться сообщение о превышении скорости.
Создайте экземпляры классов, передайте значения атрибутов. Выполните доступ к атрибутам, выведите результат.
Выполните вызов методов и также покажите результат.
"""

print('Задание 6.3')


class Car:

    def __init__(self, speed=100, color='Black', name='машинка', is_police=False):
        self.max_speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police
        self.speed = 0

    def go(self):
        self.speed = self.max_speed
        print(f'Тачка {self.name} поехала....')

    def stop(self):
        self.speed = 0
        print(f'Тачка {self.name} остановилась')

    def turn(self, direction='направо'):
        print(f'Тачка {self.name} повернула {direction}')

    def show_speed(self):
        print(f'Текущая скорость тачик {self.name} - {self.speed}')


class TownCar(Car):
    def show_speed(self):
        if self.speed > 60:
            print(f'Cкорость тачик {self.speed} - превышене (больше 60)')
        elif 0 <= self.speed < 60:
            print(f'Cкорость тачик {self.speed}')


class SportCar(Car):
    def forsage(self):
        self.speed = 250
        print('Спортивное ускорение....')


class WorkCar(Car):
    def show_speed(self):
        if self.speed > 40:
            print(f'Cкорость тачик {self.speed} - превышене (больше 40)')
        elif 0 <= self.speed < 40:
            print(f'Cкорость тачик {self.speed}')


class PoliceCar(Car):
    def sirena(self):
        print('wow....wow....wow.....wow....')


police_car = PoliceCar(200, 'Black', 'police', True)
print(f'Это {police_car.name} Car')
print(f'Цвет - {police_car.color}')
police_car.show_speed()
police_car.go()
police_car.turn('left')
police_car.turn()
police_car.show_speed()
police_car.sirena()
police_car.stop()
print('---------------------------------------------------')

sport_car = SportCar()
sport_car.name = 'sportcar'
print(f'Имя - {sport_car.name}, скорость - {sport_car.speed}, цвет - {sport_car.color}')
sport_car.go()
sport_car.show_speed()
sport_car.forsage()
sport_car.show_speed()
sport_car.stop()
print('---------------------------------------------------')

town_car = TownCar(100, 'Red', 'TownCar')
print(f'максимальная скорость - {town_car.max_speed}')
print(f'Имя - {town_car.name}')
town_car.go()
town_car.show_speed()
town_car.turn()
town_car.stop()
town_car.show_speed()
print('---------------------------------------------------')

work_car = WorkCar(30,'black', 'workcar', False)
print(work_car.name)
work_car.go()
work_car.show_speed()
work_car.turn('направо')
work_car.stop()
work_car.show_speed()