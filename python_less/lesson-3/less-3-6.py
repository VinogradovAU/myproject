# -*-coding:utf8;-*-

"""
 Реализовать функцию int_func(), принимающую слово из маленьких латинских букв и возвращающую его же, но с прописной
 первой буквой. Например, print(int_func(‘text’)) -> Text.

 Продолжить работу над заданием. В программу должна попадать строка из слов, разделенных пробелом. Каждое слово
 состоит из латинских букв в нижнем регистре. Сделать вывод исходной строки, но каждое слово должно начинаться с
 заглавной буквы. Необходимо использовать написанную ранее функцию int_func().
"""

print("Задание 6")


def int_func(words):
    return words.title()

while True:
    word = input("Введите слово/строчку маленькими буквами (для выхода quit): ")

    print(int_func(word))
    if (word == 'quit'):
        break