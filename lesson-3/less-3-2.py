# -*-coding:utf8;-*-

"""
2. Реализовать функцию, принимающую несколько параметров, описывающих
данные пользователя: имя, фамилия, год рождения, город проживания, email,
телефон. Функция должна принимать параметры как именованные аргументы.
Реализовать вывод данных о пользователе одной строкой.
"""

print("Задание 2")


def get_user_data(user_data):
    print('_---------Вывод функции get_user_data ----++---')
    for key, val in user_data.items():
        print(key, ' --> ', val)


def print_user_data(name='Vasya', surname='Pupkin', year='1900', city='New York', email='Vasya@vasya.com',
                    tel='8-800-100-10-10'):
    print(f'{name} {surname}, {year} года рождения, проживает в г. {city}. контакты: {email}, tel: {tel}')


user_data = {
    'name': 'Имя',
    'surname': 'Фамилия',
    'year': 'год рождения',
    'city': 'город проживания',
    'email': 'адрес электронной почты',
    'tel': 'номер телефона'}

for key, val in user_data.items():
    user_data[key] = input(val + ': ')

name = user_data['name']
surname = user_data['surname']
year = user_data['year']
city = user_data['city']
email = user_data['email']
tel = user_data['tel']

get_user_data(user_data)

print('_-------Вывод функции print_user_data ------++---')
print_user_data(name, surname, year, city, email, tel)

print('_-------Вывод функции print_user_data без агрументов------++---')
print_user_data()
