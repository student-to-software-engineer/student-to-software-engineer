# 5.5.2. OOP Design Patterns

Once you understand the basics of object-oriented programming (OOP), you’ll quickly realize that writing _working_ code is not the same as writing _good_ code. That’s where design patterns come in.

**Design patterns** are common solutions to recurring problems in software design. They help you write code that is more maintainable, flexible, and easy to understand—especially when your project grows in complexity or has to be worked on by multiple developers.

Think of design patterns like architectural blueprints: they’re not rigid rules, but reusable templates that help you make better decisions when structuring your code.

## What You Should Know

Here are a few beginner-friendly design patterns that are useful to know as a student:

- **Singleton**: Ensures a class has only one instance and provides a global point of access to it. Commonly used for logging, config managers, etc.
- **Observer**: A pattern where one object notifies others when its state changes. Useful for building event systems or GUIs.
- **Strategy**: Enables selecting an algorithm at runtime by encapsulating different behaviors behind a common interface.
- **Decorator**: Adds responsibilities to an object dynamically without modifying its structure. Great for UI components or middleware chains.
- **Factory**: A method or class responsible for creating objects, especially when instantiation is complex or needs to be abstracted.

### Model-View-Controller (MVC)

The **Model-View-Controller (MVC)** pattern is a widely used architectural pattern that separates an application into three interconnected components:

- **Model**: Represents the data and business logic of the application. It manages the data, logic, and rules of the application.
- **View**: Represents the user interface and displays data to the user. It listens for changes in the model and updates the UI accordingly.
- **Controller**: Acts as an intermediary between the model and view. It processes user input, manipulates the model, and updates the view.

MVC isn’t part of the original “design patterns” canon, but it’s an extremely influential pattern you’ll encounter often—especially when building full-stack applications.

## Where To Start

Read or watch videos explaining the patterns listed above. Then, try to implement them in small projects or exercises.

## Gang Of Four (GoF) Patterns

As a next step, it's worth familiarizing yourself with the **Gang of Four (GoF)** design patterns.

The **Gang of Four (GoF)** design patterns are a set of 23 foundational patterns that cover various aspects of software design. They were popularized by the book "Design Patterns: Elements of Reusable Object-Oriented Software" by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides.

Will you use all of the GoF patterns in your projects? Probably not. Just be aware of them.
