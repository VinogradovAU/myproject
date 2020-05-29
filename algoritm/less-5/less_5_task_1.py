# Задача считается решённой, если в ней использована как минимум одна коллекция из модуля collections.
# Пользователь вводит данные о количестве предприятий, их наименования и прибыль за 4 квартал (т.е. 4 числа)
# для каждого предприятия. Программа должна определить среднюю прибыль (за год для всех предприятий) и
# отдельно вывести наименования предприятий, чья прибыль выше среднего и ниже среднего.

from collections import namedtuple, deque

lst_1 = []  # список фирм
firm_base = namedtuple('firm_base', 'name, quarter')  # данные фирмы
summ_profit = 0
count = int(input('Введите количество фирм: '))
assert count > 1, 'Фирм должно быть минимум две!'

for k in range(count):
    profit = []  # прибыль фирмы
    name = input('Введите имя фирмы:')  # задаем имя очередной фирмы
    for j in range(4):
        pr = int(input(f'Введите прибыль за {j + 1} квартал: '))
        summ_profit += pr
        profit.append(pr)  # заполняем квартальные прибыли

    lst_1.append(firm_base(name, profit))  # кладем в список фирму

print(lst_1)
print(f'Средний доход фирм: {summ_profit / count}')
for k in lst_1:
    print(
        f' Компания - {k.name}, годовая прибыль - {sum(k.quarter)}, {"убыточная" if sum(k.quarter) < summ_profit / count else "прибыльная"}')
