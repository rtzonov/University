#lab8 Ivan Varabei
#individual task 
from random import randint,sample
a=str('''So she was considering in her own mind, as well as she could, for the hot day made her feel very sleepy and stupid, whether the pleasure of making a daisy-chain would be worth the trouble of getting up and picking the daisies, when suddenly a White Rabbit with pink eyes ran close by her.''')
print(a)
#Task1
j=0
g=0
j1=int
list=['a','e','i','o','u']
for j in range(len(a)):
    if a[j]==' ' and a[j+1] in list or a[j] in list and a[j+1]==' ':
        g+=1
for j in range(len(a)):
    if a[j]==' ' and a[j+1] in list :
        j1=j
        while True:
            j1+=1
            if a[j1] in list and a[j1+1]==' ':
                g-=1
                break
            if a[j1]==' ':
                break
print("Nuber of words : ",g)
#Task2
p=input("Enter symbol :")
k=0
p=p.upper()
a1=a.upper()
for i in a1:
    if i==p:
        k+=1
print("Amount of this symbol :",k)
#Task3
l=str
li=[]
a=a.lower()
for i in range(len(a)):
    if a[i-2]==',':
        i1=i
        i2=i
        while a[i2]!=' ':
            i2+=1
        l=a[i1:i2]
        li.append(l)
li.sort()
print(li)
