#-*-coding:utf8;-*-

print("Задание 1")

def devision(a, b):
    if (b==0):
        return 'деление на ноль!'
    return a/b

data = input('Введитет два числа через запятую: ')

try:
    x, y = data.split(',')
    error = 0
except:
    print('неверные данные')
    error = 1
if (not error):
    print(devision(int(x), int(y)))




       