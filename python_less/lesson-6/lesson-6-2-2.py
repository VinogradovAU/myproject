# -*-coding:utf8; -*-

"""
Реализовать базовый класс Worker (работник), в котором определить атрибуты: name, surname, position (должность),
income (доход). Последний атрибут должен быть защищенным и ссылаться на словарь, содержащий элементы:
оклад и премия, например, {"wage": wage, "bonus": bonus}. Создать класс Position (должность)
на базе класса Worker. В классе Position реализовать методы получения полного имени
сотрудника (get_full_name) и дохода с учетом премии (get_total_income). Проверить работу
примера на реальных данных (создать экземпляры класса Position, передать данные,
проверить значения атрибутов, вызвать методы экземпляров).
"""

print('Задание 6.2.2')

class Worker:
    def __init__(self, name, surname, position, wage, bonus):
        self.name = name
        self.surname = surname
        self.position = position
        self._income = {"wage": wage, "bonus": bonus}  # protected


class Position(Worker):
    def get_full_name(self):
        return self.name + ' ' + self.surname

    def get_total_income(self):
        return int(self._income['wage']) + int(self._income['bonus'])


user1 = Position('Vasya', 'Pupkin', 'Manager', 100, 50)
print(user1.get_full_name())
print(user1.get_total_income())
print(user1._income)    # защещенный атребут
print(user1.name)
print(user1.surname)
print(user1.position)
