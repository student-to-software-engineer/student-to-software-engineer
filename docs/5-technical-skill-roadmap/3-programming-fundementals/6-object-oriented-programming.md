# 5.3.6. Object-Oriented Programming

Object-Oriented Programming (OOP) is one of the most widely used programming models — especially in large applications and enterprise software. It’s popular because it often maps well to real-world scenarios, making it easier to design systems that are organized, modular, and reusable.

Instead of writing one long list of instructions (called _procedural programming_), OOP encourages you to group related data and behavior into _objects_.

## What Is an Object?

An object is a combination of **data** (attributes) also known as **state** and **functions** (methods) that operate on that data.

For example, you might represent a person like this:

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def greet(self):
        print("Hi, I'm " + self.name)

person = Person("Alice", 25)
person.greet()  # Output: Hi, I'm Alice
```

Here, `Person` is a _class_ (a blueprint), and `person` is an _object_ created from that class.

## Core Concepts of OOP

There are four key ideas that make OOP powerful:

### Encapsulation

Keeping related data and behavior together inside an object, and hiding the internal details from the outside world.

```python
class BankAccount:
    def __init__(self, balance):
        self.__balance = balance  # private variable

    def deposit(self, amount):
        self.__balance += amount

    def get_balance(self):
        return self.__balance

account = BankAccount(100)
account.deposit(50)
print(account.get_balance())  # Output: 150

```

The internal balance is hidden (`__balance`) and can only be accessed through methods.

### Abstraction

Exposing only the necessary parts of an object’s interface and hiding the rest. This makes complex systems easier to use.

```python
class Car:
    def start_engine(self):
        print("Engine started")

    def drive(self):
        self.start_engine()
        print("Car is moving")

my_car = Car()
my_car.drive()
```

You don’t need to know how `start_engine` works — you just call `drive()` and the car moves.

### Inheritance

Allowing one class to “inherit” the behavior of another, so you can reuse and extend code.

```python
class Person:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print(self.name + " says hello.")

class Student(Person):
    def study(self):
        print(self.name + " is studying.")

s = Student("Alice")
s.speak()     # Inherited from Person
s.study()     # Defined in Student
```

### Polymorphism

Different objects can define their own versions of the same method, allowing flexible and interchangeable use.

```python
class Animal:
    def make_sound(self):
        print("Some generic sound")

class Dog(Animal):
    def make_sound(self):
        print("Woof!")

class Cat(Animal):
    def make_sound(self):
        print("Meow!")

animals = [Dog(), Cat()]
for animal in animals:
    animal.make_sound()
```

Even though they’re all `Animal` objects, each one behaves differently depending on its type.

## Benefits of OOP

Compared to procedural programming, OOP has several advantages:

- **Organization** — Code is easier to read and maintain when it’s grouped into logical units (objects).
- **Reusability** — Once you define a class, you can create many instances and extend it without rewriting everything.
- **Modularity** — You can build systems in smaller, isolated parts that are easier to test and debug.
- **Scalability** — OOP makes it easier to manage larger codebases and collaborate on big projects.

## Knowledge Checklist

- [ ] I understand what a class and object are.
- [ ] I know the difference between procedural and object-oriented programming.
- [ ] I can create a simple class with methods and properties.
- [ ] I understand the concepts of encapsulation, inheritance, and polymorphism.
- [ ] I see why OOP is useful for organizing and scaling larger projects.
