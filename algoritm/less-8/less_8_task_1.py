from collections import deque, Counter, defaultdict
import operator


class MyNode:
    def __init__(self, value, left=None, right=None, data=None, start_c=None, head=None):
        self.data = data
        self.value = value
        self.left = left
        self.right = right
        self.start_c = start_c  # код узла '011'
        self.head = head  # признак корневого узла 1 - корень


def my_sort(massive):
    return sorted(ss.items(), key=operator.itemgetter(1), reverse=False)


ss = 'beep boop beer!'
print(f'Будем кодировать фразу: {ss}')
#ss = 'very very bad news!'
input_data = ss
dd = deque()
ss = dict(Counter(ss))
for k in ss.keys():
    # print(k, ss[k])
    dd.append((k, ss[k]))

# print(dd)  # исходный массив

ss = my_sort(dict(dd))
# # print(ss)
# ss = deque(ss)
print(f'исходная последовательность: {ss}')  # исходная очередь отсортирована
test = []
output = ss.copy()

k = 0  # признак того что массив кончился и остался один узел
j = len(ss)
my_tree = []

while True:
    print(f'k={k}')
    print(f'j={j}')

    test.append(ss.copy())
    if j == 1:
        # остался 1-н элемент массива
        print(f'Остался один элемент: {ss}')
        break

    len_tree = len(my_tree)

    if len_tree == 0:
        # создадим первый узел
        my_tree.append(MyNode(ss[0][1] + ss[1][1], left=ss[0][0], right=ss[1][0], data=str(ss[0][0]) + str(ss[1][0])))


    else:
        tmp_node_1 = 0
        tmp_node_2 = 0
        for id in my_tree:
            if ss[0][0] == id.data:
                tmp_node_1 = id
                print(f'{ss[0][0]} совпало')
            if ss[1][0] == id.data:
                tmp_node_2 = id
                print(f'{ss[1][0]} совпало')

        if tmp_node_1 != 0 and tmp_node_2 != 0:
            if tmp_node_1.value > tmp_node_2.value:
                my_tree.append(MyNode(tmp_node_1.value + tmp_node_2.value, left=tmp_node_2, right=tmp_node_1,
                                      data=tmp_node_1.data + tmp_node_2.data))
            elif tmp_node_1.value <= tmp_node_2.value:
                my_tree.append(MyNode(tmp_node_1.value + tmp_node_2.value, left=tmp_node_1, right=tmp_node_2,
                                      data=tmp_node_1.data + tmp_node_2.data))

        if tmp_node_1 != 0 and tmp_node_2 == 0:
            if tmp_node_1.value > ss[1][1]:
                my_tree.append(MyNode(tmp_node_1.value + ss[1][1], left=ss[1][0], right=tmp_node_1,
                                      data=tmp_node_1.data + str(ss[1][0])))
            elif tmp_node_1.value <= ss[1][1]:
                my_tree.append(MyNode(tmp_node_1.value + ss[1][1], left=tmp_node_1, right=ss[1][0],
                                      data=tmp_node_1.data + str(ss[1][0])))

        if tmp_node_1 == 0 and tmp_node_2 != 0:
            if tmp_node_2.value > ss[0][1]:
                my_tree.append(MyNode(tmp_node_1.value + ss[0][1], left=ss[1][0], right=tmp_node_2,
                                      data=tmp_node_2.data + str(ss[0][0])))
            elif tmp_node_2.value <= ss[0][1]:
                my_tree.append(MyNode(tmp_node_2.value + ss[0][1], left=tmp_node_2, right=ss[0][0],
                                      data=str(ss[0][0] + tmp_node_2.data)))
        if tmp_node_1 == 0 and tmp_node_2 == 0:
            my_tree.append(MyNode(ss[0][1] + ss[1][1], left=ss[0][0], right=ss[1][0],
                                  data=str(ss[0][0]) + str(ss[1][0])))

    tt = (str(ss[0][0]) + str(ss[1][0]), ss[0][1] + ss[1][1])  # вставил значение созданного узла в последоваттельность
    del ss[0]  # удалил два 1-х элемента
    del ss[0]
    ss.append(tt)
    ss = dict(ss)
    ss = my_sort(dict(ss))  # сортировка новой последовательности
    print(ss)

    j -= 1
    k += 1

    # for k in my_tree:
    #     print(f'    {k.value}')
    #     print(f'  /  \    ')
    #     print(f'{k.left} {k.right}')

k = len(test) - 1
for jj in range(len(test)):
    print(test[k])
    k -= 1

my_tree_revers = []
k = len(my_tree) - 1
for jj in range(len(my_tree)):
    my_tree_revers.append(my_tree[k])
    k -= 1


def search(my_tree):
    print(my_tree.__dict__)

    qq = 0

    if 'MyNode' in str(my_tree.__dict__['left']):
        if my_tree.head == 1:
            my_tree.start_c = None

        if my_tree.start_c != None:
            my_tree.left.start_c = my_tree.start_c + '0'
        else:
            my_tree.left.start_c = '0'
        my_tree.left.head = 0
        print(f'узел:{my_tree.data},{my_tree.value} шаг влево {my_tree.left.data}({my_tree.left.value})')
        search(my_tree.left)
    else:
        print(f'узел:{my_tree.data},{my_tree.value}, слева {my_tree.left} лепесток, {my_tree.start_c + "0"}')
        output_m[my_tree.left] = my_tree.start_c + "0"

    if 'MyNode' in str(my_tree.__dict__['right']):
        if my_tree.head == 1:
            my_tree.start_c = None

        if my_tree.start_c != None:
            my_tree.right.start_c = my_tree.start_c + '1'
        else:
            my_tree.right.start_c = '1'

        my_tree.right.head = 0
        print(f'узел: {my_tree.data},{my_tree.value} шаг вправо {my_tree.right.data}({my_tree.right.value})')
        search(my_tree.right)
    else:
        print(f'узел: {my_tree.data},{my_tree.value},справа {my_tree.right} лепесток, {my_tree.start_c + "1"}')
        output_m[my_tree.right] = my_tree.start_c + "1"
    return output_m



for i in my_tree_revers:
    print(i.__dict__)
print("*" * 50)

output_m = {}
my_tree_revers[0].head = 1

output_m = search(my_tree_revers[0])

print("*" * 50)
print(f'Таблица кодировки: {output_m}')
print(f'Кодируемая последовательность: {input_data}')
output_code = ''

for k in input_data:
    for j in output_m.items():
        if j[0] == str(k):
            output_code += j[1]
            output_code += ' '
print(f'Результат кодировки:')
print(output_code)

# **************************************************
# Таблица кодировки: {'b': '00', 'e': '01', 'p': '100', ' ': '101', 'r': '1100', '!': '1101', 'o': '111'}
# Кодируемая последовательность: beep boop beer!
# Результат кодировки:
# 00 01 01 100 101 00 111 111 100 101 00 01 01 1100 1101