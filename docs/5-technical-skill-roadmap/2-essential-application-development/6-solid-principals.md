# 5.2.6. SOLID Principles

As you grow more comfortable with object-oriented programming, you’ll eventually run into messy codebases—maybe even your own. Classes get bloated. Functions do too much. Making one change breaks something else. That’s where the **SOLID principles** come in.

**SOLID** is an acronym for five design principles that help you write code that is easier to maintain, scale, and reason about. They’re not rules you must follow 100% of the time—but they’re extremely useful guidelines, especially when your code starts to grow.

## What Does SOLID Stand For?

Here’s a breakdown of each principle with simple explanations and beginner-friendly examples.

### **S — Single Responsibility Principle**

A class should have only one responsibility.

Each class or module should focus on doing **one thing well**. If your class is handling file input, parsing data, and sending emails—that’s three responsibilities. If the file format changes, or the email logic needs tweaking, you now have to untangle all that logic in one place.

**Why it matters:** Smaller, focused classes are easier to understand, test, and change without unintended side effects.

### **O — Open/Closed Principle**

Software entities should be open for extension, but closed for modification.

You should be able to **add new functionality** without modifying existing code. This often involves using **abstraction**—for example, defining an interface that your code can depend on, and letting new classes implement that interface.

**Why it matters:** Reduces the risk of breaking existing features when adding new ones.

### **L — Liskov Substitution Principle**

Objects of a superclass should be replaceable with objects of a subclass.

If a function works with a base class, it should also work if you pass in any subclass—without altering the behavior or breaking the app. Violating this principle leads to bugs that are hard to catch.

**Why it matters:** Helps you write polymorphic code that behaves consistently, even with subclasses.

### **I — Interface Segregation Principle**

Clients should not be forced to depend on interfaces they do not use.

It’s better to have several small, specific interfaces rather than one large, general-purpose interface. This keeps things modular and avoids situations where you’re forced to implement irrelevant methods just to satisfy a bloated interface.

**Why it matters:** Makes your codebase cleaner and more flexible to change.

### **D — Dependency Inversion Principle**

High-level modules should not depend on low-level modules. Both should depend on abstractions.

Instead of hardcoding concrete dependencies, classes should rely on **abstractions** (e.g., interfaces). This makes your code more flexible and easier to test.

**Why it matters:** Improves modularity and allows swapping out parts of your system (e.g., different databases or APIs) with minimal changes.

## Knowledge Checklist

- [ ] I can explain what each letter in SOLID stands for.
- [ ] I understand why the Single Responsibility Principle makes code easier to maintain.
- [ ] I know how the Open/Closed Principle helps prevent breaking existing features when adding new functionality.
- [ ] I understand what it means to follow the Liskov Substitution Principle and why it matters for subclass behavior.
- [ ] I can describe why the Interface Segregation Principle helps keep code modular and focused.
- [ ] I understand how the Dependency Inversion Principle makes code easier to test and more flexible.
- [ ] I can identify when a piece of code violates one of the SOLID principles.
