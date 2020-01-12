# print(abs(-50))
# print(abs(50))

# print(5 & 3)
# print(5 | 3)
# print(5 ^ 3)

# print(6 >> 1)
# print(6 << 1)
# print(6 << 3)
# print(6 * (2 ** 3))

# print(int('0110', 2))
# print(bin(17))
# print(oct(17))
# print(hex(17))
# a + ib
# print(complex(5, 6))

# my_str = '123456789 hello world !'
# print(my_str + my_str)
# print(my_str[3])
# print(my_str[-1])

# print(my_str[1:5:2])  # [start:stop:step]
# print(len(my_str))
# print(my_str.split())

# print(' '.join(['one', 'two']))
my_str = 'Hello World! My favorite dish is pizza'
# print(my_str.title())
# print(my_str.capitalize())
# print(my_str.lower())
# print(my_str.upper())
# print(my_str.istitle())
# print('a' in my_str)
# print(my_str.count(' '))
# print(my_str.find('a'))
# print(my_str.find('a', 18))
# print(my_str.find('/'))


# my_str[0] = 'R'

my_list = ['Hello', 10, 51.2, True, [1, 2, 3, [5, 6, 7]]]
# print(list(my_str))

# print(my_list[1])
# print(my_list[::2])
# my_list.append('qwe')
# my_list.insert(0, 'zxc')
# deleted_elem = my_list.pop()
# print(my_list, deleted_elem)
# my_list.reverse()
# print(my_list)
# print(my_list.index(10))
# print(my_list[4][3][1])

# my_list = ['Hello', 10, 51.2, True, [1, 2, 3, [5, 6, 7]]]
# my_tuple = ('Hello', 10, 51.2, True, [1, 2, 3, [5, 6, 7]])
# print(type(my_list), type(my_tuple))

# a = 'qwe'
# b = 'qwe'

# print(id(a), id(b))
# print(a is b)

# my_set = {1, 2, 2, 3, 3, 44, 6, 7, 8, 89, 1}
# print(my_set)
# my_list = [1, 1, 1, 1, 2, 2, 2, 3, 4, 6]
# print(set(my_list))
a = {1, 2, 3}
b = {3, 4, 5}
print(a | b)
print(a == b)
print(a & b)
print(a - b)
# a.remove(9)
# a.discard(9)
print(a)


human = {'name': 'Ivan', 'surname': 'Ivanov', 'age': 20}
# human['data'] = [1, 2, 3, 5]
# print(human.get('name'))
# print(human.popitem())
# print(human.pop('age'))
# print(human)
# print(human.keys())
# print(human.values())
# print(human.items())

# print(b'qwe')
# print('текст'.encode('utf-8'))
# print(bytes('text'.encode('utf-8')))

# try:
#     print(10 / 1)
#     print(int('50.5'))
# except ZeroDivisionError:
#     print('Деление на ноль!')
# except ValueError:
#     print('Smt wrong')

# for key, value in human.items():
#     print(key, value)

# for i in range(1, 150, 4):
#     print(i, 'Hello')

# a = 5 if 5 > 6 else 0
# print(a)
# age = int(input('Age: '))
# print('Welcome' if age >= 18 else 'No Access')

# a = ['a', 'b', 'c', 'r']
# for i, el in enumerate(my_list, start=1):
#     print(i, el)