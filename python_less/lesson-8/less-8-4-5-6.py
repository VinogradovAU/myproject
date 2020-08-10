# -*-coding:utf8; -*-

"""
Начните работу над проектом «Склад оргтехники». Создайте класс, описывающий склад.
А также класс «Оргтехника», который будет базовым для классов-наследников.
Эти классы — конкретные типы оргтехники (принтер, сканер, ксерокс). В базовом классе
определить параметры, общие для приведенных типов. В классах-наследниках реализовать
параметры, уникальные для каждого типа оргтехники.

"""

print('Задание 8.4-5-6')


class Storage:
    '''
    Класс склад. У него есть имя. Он может поместить в себя
    объект(положить на полку) и отдать объект(выдать обратно).
    '''

    def __init__(self, name):
        self.name = name
        self.db = []
        print(f'Склад {name} создан')

    def put_on_storage(self, obj):
        self.db.append(obj)
        print(f'Объект {obj.device_type} помещен на склад')

    def up_from_storage(self):
        print('Выдача последнего внесенного объекта')
        return self.db.pop()

    def get_info_storage(self):
        print(f'Информация о складе: имя - {self.name}')
        storage_list = [el.get_info() for el in self.db]
        print(f'Состояние склада:  {storage_list}')

class Equipment:
    ''' Базовый класс оргтехника'''

    def __init__(self, device_type='', quantity=1,  specification=[]):
        self.device_type = device_type
        try:
           self.quantity = int(quantity)
        except ValueError:
           print(f'неверный тип данных в поле quantity для {self.device_type}')
           self.quantity = 0  
           
        self.specification = specification

    def get_info(self):
        info = [self.device_type, self.specification, self.quantity]
        return info

class Printer_dev(Equipment):
    ''' Класс для принтера'''

    def __init__(self, device_type='', quantity=1,  specification=[]):
        super().__init__(device_type, quantity)
        self.specification = specification


    def __add__(self, other):
        self.specification.append(other)


class Scanner_dev(Equipment):
    ''' Класс для сканера'''

    def __init__(self, device_type='', quantity=1, specification=[]):
        super().__init__(device_type, quantity)
        self.specification = specification

    def __add__(self, other):
        self.specification.append(other)


class Xerox_dev(Equipment):
    ''' Класс для ксерокса'''

    def __init__(self, device_type='', quantity=1, specification=[]):
        super().__init__(device_type, quantity)
        self.specification = specification

    def __add__(self, other):
        self.specification.append(other)


stor1 = Storage('stor-1') # создаем склад


scanner1 = Scanner_dev('scanner', 5) # создаем объект техники. количество по умолчанию 1
scanner1 + 'формат А2'            # заполняем спецификацию
scanner1 + 'тип МФУ'
print(scanner1.get_info())

printer1 = Printer_dev('printer', 'asd') # создаем объект техники. количество по умолчанию 1
printer1 + 'цвет белый'           # заполняем спецификацию
printer1 + 'формат А4'
print(printer1.get_info())

xerox1 = Xerox_dev('xerox', 22)
xerox1 + 'цвет зеленый'
xerox1 + 'формат А3'

stor1.put_on_storage(xerox1)     # складываем обьект на полку склада
stor1.put_on_storage(printer1)    # складываем объект на полку склада
stor1.put_on_storage(scanner1)    # складываем объект на полку склада

stor1.get_info_storage()          # информация о складе

stor1.up_from_storage()           # взяли со склада 1 объект

stor1.get_info_storage()          # информация о складе




