#-*-coding:utf8;-*-

print("Задание 3")

num = int(input('Введите целое число: '))

aa= str(num) + str(num)
aaa = aa + str(num)

print(f'расчет суммы по формуле: {num} + {aa} + {aaa} = {num+int(aa)+int(aaa)}')

