# https://drive.google.com/file/d/1Ja20r_wwVQ5CLhaXjtpFqQNfKUC7bCZy/view?usp=sharing
# Пользователь вводит две буквы. Определить, на каких местах алфавита они стоят, и сколько между ними находится букв.


x1 = input("Введите одну любую букву из английского алфавита: ")
x2 = input("Введите еще одну - другую букву из английского алфавита: ")

# расчет позиции букв в алфавите через коды в таблице символов
# вычитая из кода для x1 код буквы "a" и прибавляя единицу получим номер буквы х1 в алфавите
cod_a = ord('a')
print(f"порядковый номер буквы '{x1}' в алфавите: ", ord(x1) - cod_a + 1)
print(f"порядковый номер буквы '{x2}' в алфавите: ", ord(x2) - cod_a + 1)
# найдя разницу между кодами заданных букв  и вычитая 1 из этой разницы получим число соответствующее количеству букв
# между заданными буквами
if x1!=x2:
    print(f"количество букв между буквами '{x1}' и '{x2}' : ", abs(ord(x1)-ord(x2))- 1)
else:
    print(f'количество букв между заданными: = 0')
