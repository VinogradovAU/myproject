#-*-coding:utf8;-*-

print("Задание 5")

prihod = input('Введите размер выручки за месяц, \nв рублях: ')
rashod = input('Введите размер расхода за месяц, \nв рублях: ')

prihod = int(prihod)
rashod = int(rashod)

if (prihod > rashod):
    print('Поздравляю, Вы в плюсе. Приход больше расхода')

    rent_all = (prihod-rashod)/(rashod/100)
    print('Общая рентабельность:', "%.2f" % (rent_all), '%')

    pioples = int(input('Введите количество \nчеловек в компани: '))
    rent_human = int((prihod - rashod)/pioples)
    print('Прибыль на 1 сотрудника, рублей: ', rent_human)
    print('Прибыть на 1 сотрудника, %: ', "%.2f" % (rent_all/pioples))
else:
    print('Расходы привысили доходы!')


