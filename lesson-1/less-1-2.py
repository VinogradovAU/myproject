# -*-coding:utf8;-*-

print("задание 2. чч:мм:сс")
sec_in = int(input('Введите количество секунд:'))

if 0 <= sec_in < 60:
    print('время в формате чч:мм:сс - 00:00:',sec_in)
else:
    min_out = sec_in // 60
    sec_out = sec_in % 60
    if min_out > 60:
        hours = min_out // 60
        min_out = min_out % 60
        print(f'время в вормате чч:мм:сс - {hours}:{min_out}:{sec_out}')
    else:
        print('время в вормате чч:мм:сс - 0:%d:%d' % (min_out, sec_out))