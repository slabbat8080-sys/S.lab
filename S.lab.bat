---Index---
-----------

3.even or odd
4.Arithmetic operations
5.fibonacci series
6.given prime number
7.reverse a string
8.list operations
9.tuple creation
10.dictionary to store student
11. sets
12.count frequency
13.factorial of a number
14.list of tuples using lambda
15.open txt file (read content)
16.CSV file 
17.read two file combined content in third
18.ZeroDivisionError & ValueError
19.given range of numbers
20.class student with attributes
21.BankAccount Class (deposit/withdraw)
22.Base class Vehicle
23.base class shape 
24factory pattern types of employee


---Question---
--------------


---Q3.Given number is even or odd using conditional statement---
----------------------------------------------------------------

--num=int(input("Enter the number to check odd or even:"))
if num % 2==0:
    print("This is even number:")
else:
    print("this is odd number:")


---Q4.Arithmetic operations (+,-,*,/) based un user input---
------------------------------------------------------------

--a=float(input("Enter first number:"))
b=float(input("Enter second number:"))

print("Addition =",a+b)
print("subtraction =",a-b)
print("multiplication =",a*b)
print("division =",a/b)


---Q5.first 10 numbers in fibonacci series using a for loop---
--------------------------------------------------------------

--n = 10
a, b = 0, 1

print("Fibonacci Series:")

for i in range(n):
    print(a, end=" ")
    a, b = b, a + b


---Q6.given number is prime---
------------------------------
 
--num = int(input("Enter a number: "))

if num > 1:
    for i in range(2, num):
        if num % i == 0:
            print(num, "is not a prime number")
            break
    else:
        print(num, "is a prime number")
else:
    print(num, "is not a prime number")


---Q7.reverse a string and check it is a palindrome---
------------------------------------------------------

--string = input("Enter a string: ")

rev = string[::-1]

print("Reversed string:", rev)

if string == rev:
    print("It is a palindrome")
else:
    print("It is not a palindrome")


---Q8.demonstrate list operations appending inserting, removing, sorting and slicing a list---
----------------------------------------------------------------------------------------------

--my_list = [10, 20, 30, 40, 50]

print("Original list:", my_list)

my_list.append(60)
print("After append:", my_list)

my_list.insert(2, 25)
print("After insert:", my_list)

my_list.remove(30)
print("After remove:", my_list)

my_list.sort()
print("After sort:", my_list)

print("Sliced list (index 1 to 4):", my_list[1:4])


---Q9.how to work with tuples. include tuple creation,accessing elements,and demonstrating immutability---
----------------------------------------------------------------------------------------------------------

--my_tuple = (10, 20, 30, 40, 50)

print("Tuple:", my_tuple)

print("First element:", my_tuple[0])
print("Last element:", my_tuple[-1])

print("Sliced tuple (1 to 3):", my_tuple[1:4])

try:
    my_tuple[1] = 100 
except TypeError:
    print("Tuples are immutable (cannot be changed)")

new_tuple = my_tuple + (60,)
print("New tuple after adding element:", new_tuple)


---Q10.dictionary to store student names as keys and their marks as values. write functions to add, update and display student information---
---------------------------------------------------------------------------------------------------------------------------------------------

--students = {}

def add_student(name, marks):
    students[name] = marks
    print("Student added successfully")

def update_student(name, marks):
    if name in students:
        students[name] = marks
        print("Student marks updated")
    else:
        print("Student not found")

def display_students():
    if not students:
        print("No student records found")
    else:
        print("Student Records:")
        for name, marks in students.items():
            print(name, ":", marks)

add_student("Alice", 85)
add_student("Bob", 90)

update_student("Alice", 95)

display_students()


---Q11.perform union, intersection, difference, and symmetric difference between two sets---
--------------------------------------------------------------------------------------------

--set1 = {1, 2, 3, 4, 5}
set2 = {4, 5, 6, 7, 8}

print("Set 1:", set1)
print("Set 2:", set2)

print("Union:", set1 | set2)

print("Intersection:", set1 & set2)

print("Difference (set1 - set2):", set1 - set2)
print("Difference (set2 - set1):", set2 - set1)

print("Symmetric Difference:", set1 ^ set2)


---Q12.frequency of elements in a list using a dictionary---
------------------------------------------------------------

--my_list = [1, 2, 2, 3, 4, 1, 2, 3, 5]

freq = {}

for item in my_list:
    if item in freq:
        freq[item] += 1
    else:
        freq[item] = 1

print("Element frequencies:")
for key, value in freq.items():
    print(key, ":", value)


---Q13.function to compute the factorial of a number---
-------------------------------------------------------

--def factorial(n):
    fact = 1
    for i in range(1, n + 1):
        fact *= i
    return fact

num = int(input("Enter a number: "))

if num < 0:
    print("Factorial does not exist for negative numbers")
else:
    print("Factorial of", num, "is", factorial(num))



---Q14. create a program that sorts a list of tuples ( name , age) using a lambda function based on the age ?---
----------------------------------------------------------------------------------------------------------------


people = [("Alice", 25), ("Bob", 20), ("Charlie", 30), ("David", 22)]

sorted_people = sorted(people, key=lambda x: x[1])

print("Sorted list by age:")
print(sorted_people)


---Q15. WAPP to open a text file write some content into it read the content back & print it to the consol---
-------------------------------------------------------------------------------------------------------------
 

with open("sample.txt", "w") as file:
    file.write("Hello, this is a sample text file.\n")
    file.write("This content is written using Python.\n")

with open("sample.txt", "r") as file:
    content = file.read()

print("File Content:")
print(content)
file.close ()


---Q16.read a csv file, manipulate its content & write its result back into new file---
---------------------------------------------------------------------------------------


import csv

with open('data.csv', 'r') as f:
    reader = list(csv.DictReader(f))

for row in reader:
    row['salary'] = float(row['salary']) * 1.1

with open('output.csv', 'w', newline='') as f:
    writer = csv.DictWriter(f, fieldnames=reader[0].keys())
    writer.writeheader()
    writer.writerows(reader)



---Q17. WAP that reads two text files and write their combined content into a third file---
-------------------------------------------------------------------------------------------

 

with open('file1.txt', 'r') as f1:
    content1 = f1.read()

with open('file2.txt', 'r') as f2:
    content2 = f2.read()

with open('file3.txt', 'w') as f3:
    f3.write(content1 + "\n" + content2)

print("Files combined successfully!")



---Q18.ask the user to input two numbers and  performs divison, handling zero division and value error expections---
--------------------------------------------------------------------------------------------------------------------


try:
    num1 = float(input("Enter first number: "))
    num2 = float(input("Enter second number: "))
    
    result = num1 / num2
    print("Result:", result)

except ValueError:
    print("Error: Please enter valid numeric values.")

except ZeroDivisionError:
    print("Error: Division by zero is not allowed.")

finally:
    print("Program execution completed.")



---Q19.define a custom exception for validating if a number is written a given range raise an exception if it is out of range---
--------------------------------------------------------------------------------------------------------------------------------


class OutOfRangeError(Exception):
    pass

try:
    num = int(input("Enter number: "))
    
    if num < 1 or num > 100:
        raise OutOfRangeError("Number is out of range (1-10)")
    
    print("Number is within range")

except OutOfRangeError as e:
    print(e)

except ValueError:
    print("Invalid input")



---Q20.write a python class student with attributes likw name, age , and marks create methods to input and display student details---
-------------------------------------------------------------------------------------------------------------------------------------


class Student:
    def __init__(self):
        self.name = ""
        self.age = 0
        self.marks = 0

    def input_details(self):
        self.name = input("Enter name: ")
        self.age = int(input("Enter age: "))
        self.marks = float(input("Enter marks: "))

    def display_details(self):
        print("\nStudent Details:")
        print("Name:", self.name)
        print("Age:", self.age)
        print("Marks:", self.marks)


s = Student()
s.input_details()
s.display_details()



---Q21. deleop a bank account class that has mrthods to deposite , withdraw , and check balance. implement error handling for insufficient balance ?---
-------------------------------------------------------------------------------------------------------------------------------------------------------

class BankAccount:
    def __init__(self):
        self.balance = 0

    def deposit(self, amount):
        self.balance += amount

    def withdraw(self, amount):
        if amount > self.balance:
            print("Error: Insufficient balance")
        else:
            self.balance -= amount

    def check_balance(self):
        print("Balance:", self.balance)


acc = BankAccount()

acc.deposit(1000)
acc.withdraw(500)
acc.withdraw(400)   
acc.check_balance()


---Q21. WAP with a base class vehicle & derived classes car & bike, demonstrate overriding a method in derived class---
-----------------------------------------------------------------------------------------------------------------------


class Vehicle:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model

    def fuel_type(self):
        print("This vehicle uses some form of energy")


class Car(Vehicle):
    def fuel_type(self):
        print(f"The {self.brand} car uses petrol")



c = Car("Toyota", "Fortuner")
c.fuel_type()


---Q23.WAPP to demonstrate polymorphism by creating a base class shape and derived classes circle and rectangle, each implementing an area() method---
------------------------------------------------------------------------------------------------------------------------------------------------------

 
class Shape:
    def area(self):
        print("Area not defined")

class Circle(Shape):
    def __init__(self, r):
        self.r = r

    def area(self):
        print("Circle Area:", 3.14 * self.r * self.r)

class Rectangle(Shape):
    def __init__(self, l, b):
        self.l = l
        self.b = b

    def area(self):
        print("Rectangle Area:", self.l * self.b)


c = Circle(5)
r = Rectangle(4, 6)

c.area()
r.area()


---Q.24 implement a factory pattern that creates different types of employees (e.g , manager, developer , intern ) based on user input---
-----------------------------------------------------------------------------------------------------------------------------------------


class Manager:
    def work(self):
        print("Manager works")

class Developer:
    def work(self):
        print("Developer works")

class Intern:
    def work(self):
        print("Intern works")

def factory(emp):
    if emp == "manager":
        return Manager()
    elif emp == "developer":
        return Developer()
    elif emp == "intern":
        return Intern()

e = input("Enter type: ")
obj = factory(e)

if obj:
    obj.work()
else:
    print("Invalid type")