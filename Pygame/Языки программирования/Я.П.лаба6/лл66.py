def fib(n):
    if n==1 or n==2:
        return 1
    return fib(n-1)+fib(n-2)
print("Enter 1 to show element\nEnter 2 to show row\nEnter 3 to show special row")
while True:
    k=int(input("Enter number of task, 0 to stop :"))
    if k==0:
        break
    if k==1:
        n=int(input("Enter n : "))
        print(fib(n))
    if k==2:
        n=int(input("Enter n : "))
        while n>0:
            print(fib(n))
            n-=1
    if k==3:
        n=int(input("Enter n : "))
        x=int(n)
        n=1
        while True:
            if fib(n)>=x:
                break
            print(fib(n))
            n+=1
