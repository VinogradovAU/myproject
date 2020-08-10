# -*-coding:utf8; -*-

"""
Создать файл данными по фирмам: Название, форма собственности, выручка, издержки.
1. Прочитать файл, вычислить прибыль каждой компании, а также среднюю прибыль.
Если фирма получила убытки, в расчет средней прибыли ее не включать.
2. Создать список словарей Если фирма получила убытки, также добавить ее в словарь (со значением убытков).
Пример списка: [{“firm_1”: 5000, “firm_2”: 3000, “firm_3”: 1000}, {“average_profit”: 2000}].
3. Записать список в виде json объекта

"""
print('Задание 5.7')

import json

with open('test5-7.txt', 'r', encoding="utf-8") as f:
    print('Данные из файла test5-7.txt')
    print(f.read())
    print('-----------------------------')
    f.seek(0)

    good_dict = {} # Словарь для успешных компаний
    bad_dict = {} # Словарь для умыточных компаний

    for line in f.readlines():
        if (int(line.split()[2]) - int(line.split()[3]) >= 0 ):
            good_dict[line.split()[0]] = int(line.split()[2]) - int(line.split()[3])
        else:
            bad_dict[line.split()[0]] = int(line.split()[2]) - int(line.split()[3])

    print('Прибыльные компании:')
    average_profit = 0
    for el, key in good_dict.items():
        print(el, key)
        average_profit = average_profit + key
    print(f'Средняя прибыль: {average_profit/len(good_dict)}')

    print('-----------------------------')
    print('Компании с убытком:')
    for el, key in bad_dict.items():
        print(el, key)

with open('test5-7-json.txt', 'w') as fd:
    json_list = [good_dict, bad_dict] # формируем список словарей для записи в формате JSON
    json.dump(json_list, fd)
    print(f'Запись JSON в файл test5-7-json.txt выполнена')


