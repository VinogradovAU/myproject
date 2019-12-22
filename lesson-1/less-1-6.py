# -*-coding:utf8;-*-

print("Задание 6")

res_now = int(input('Введите результат дня, км. : '))
res_better = int(input('Введите желаемый результат, км./день: '))

proc = 10  # прирост процентов в день
print('Заданный рост результативности \nспортсмена в день, %: ', proc)
stop = 1  # признак выхода из цила
day = 1  # количество дней тренировки

while (stop == 1):
    if (day == 1):
        print(day, '-й день тренировок - ', "%d" % (res_now), ' км.')
        day += 1
        continue
    res_now = res_now * 1.1
    print(day, '-й день тренировок - ', "%.2f" % (res_now), ' км.')
    if (res_now > res_better):
        print(f'На {day} день спортсмен достиг \nрезультата - не менее {res_better} км.')
        break
    day += 1
