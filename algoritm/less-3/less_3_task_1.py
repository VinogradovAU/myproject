# В диапазоне натуральных чисел от 2 до 99 определить, сколько из них
# кратны каждому из чисел в диапазоне от 2 до 9.

lst_1 = [x for x in range(2,100)]
lst_2 = [x for x in range(2,10)]
print(lst_1)
print(lst_2)
for k in lst_2:
    count = 0
    cc=[]
    for j in lst_1:

        if j % k==0:
            #print(f'; {j} % {k} = {j % k} ', end='')
            cc.append(j)
            count = count + 1
    #print('',end='\n')
    print(f'для {k} количество кратных чисел = {count} ({cc}')



