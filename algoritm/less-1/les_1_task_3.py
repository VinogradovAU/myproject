# https://drive.google.com/file/d/1xa6Wja2p-N3B6BmIytoyBZTs878B2pts/view?usp=sharing
# По введенным пользователем координатам двух точек вывести уравнение прямой
# вида y = kx + b, проходящей через эти точки.

x1 = int(input("Введите x1 координаты точки №1: "))
y1 = int(input("Введите y1 координаты точки №1: "))
x2 = int(input("Введите x2 координаты точки №2: "))
y2 = int(input("Введите y2 координаты точки №2: "))

# #  0=kx + b - y
# k*x1 + b - y1 = k*x2 + b - y2
# k*x1 + b - y1 - b = K*x2 - y2
# y2-y1 = k*(x2 - x1)
# (y2-y1)/(x2-x1) = k
# b = y-kx

k=(y2-y1)/(x2-x1)
print(f'найдем k по формуле: k=({y2}-{y1})/({x2}-{x1}): {k=}')
b=y2-k*x2
print(f'найдем b по формуле b={y2}-{k}*{x2}: {b=}')
print(f'полученное оравление: y={k}х + {b}')
