# 3. Сформировать из введенного числа обратное по порядку входящих в него цифр и вывести на экран.
# Например, если введено число 3486, надо вывести 6843
import sys
from memory_profiler import profile

def size_obj():
    summ_size = 0
    for k in globals():
        if '__' not in str(k) and str(k) != 'profile' and str(k) != 'sys':
            #print(f'Переменная/объект {k} = {globals()[str(k)]} занимает {sys.getsizeof(k)} ')
            print(f'Переменная/объект {k} занимает {sys.getsizeof(globals()[str(k)])} ')
            summ_size += sys.getsizeof(globals()[str(k)])

    for k in locals():
        print(f'Переменная/объект {k} = {locals()[str(k)]} занимает {sys.getsizeof(locals()[str(k)])} ')
        summ_size += sys.getsizeof(locals()[str(k)])

    print('*' * 50)
    print(f'Локальные и глобальные переменные заняли: {summ_size} байт')

@profile
def my_revirse_1(x):
    if x // 10 == 0:
        return str(x)
    else:
        try:
            return str(x % 10) + str(my_revirse_1(x // 10))
        except RecursionError:                                  # СКОЛЬКО СМОЖЕТ СТОЛьКО СМОЖЕТ :-) для числа  a = 9628 ** 96
            return str(x)

if __name__ == '__main__':
    #a = int(input('Введите целое число: '))
    a = 9628 ** 96
    z = my_revirse_1(a)
    print(a, '--->', int(z))
    size_obj()

# Введите целое число: 100500
# 100500 ---> 5001


# Python 3.8.1 (tags/v3.8.1:1b293b6, Dec 18 2019, 22:39:24) [MSC v.1916 32 bit (Intel)] on win
# 32

# Line #    Mem usage    Increment   Line Contents
# ================================================
#     21     14.8 MiB     13.5 MiB   @profile
#     22                             def my_revirse_1(x):
#     23     14.8 MiB      0.0 MiB       if x // 10 == 0:
#     24                                     return str(x)
#     25                                 else:
#     26     14.8 MiB      0.0 MiB           try:
#     27     14.8 MiB      0.0 MiB               return str(x % 10) + str(my_revirse_1(x // 10))
#     28                                     except RecursionError:                                  # СКОЛЬКО СМОЖЕТ СТОЛьКО СМОЖЕТ :-) для числа  a = 9628 ** 96
#     29                                         return str(x)
#
#
# 26270227505898494014013300279303499155442834995490725081972369733248004254008981433142885782523181795630369769093181732050565287269529242806790139123833575659246498820138327589867513644933333343609452009299096537034336728481054735932168701310582581097012840237989458184125947120012332105190438173140882019155596244364768963249050707842050025754392865661130355010461594233445281693696 ---> 69639618254433249516401055303116656829345752005024870705094236986746344269555191028804137183409150123321002174952148185498973204821079018528501310786123953745018482763343073569099290025490634333333944631576898572383102889464295657533832193109760826270227505898494014013300279303499155442834995490725081972369733248004254008981433142885782523181795630369769093181732050565287269529242
# Переменная/объект size_obj занимает 68
# Переменная/объект my_revirse_1 занимает 68
# Переменная/объект a занимает 182
# Переменная/объект z занимает 408
# Переменная/объект summ_size = 726 занимает 14
# Переменная/объект k = k занимает 26
# **************************************************
# Локальные и глобальные переменные заняли: 766 байт
#
# Process finished with exit code 0

# ВЫВОД: Данный алгоритм на больших числах с рекурсивной функцией не работает! Завершается с ошибкой переполнения стека.
# Размер памяти занимаемый посчитался, пытался считать пременные/объекты созданные в скрипте. Похоже я не учел память трубемую на
# хранение переменных (т.е. число которое ссылается на область памяти где лежит объект, оно тоже занимает память).