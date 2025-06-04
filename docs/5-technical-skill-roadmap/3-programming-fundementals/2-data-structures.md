# 5.3.2. Data Structures

Data structures are the building blocks of how we store, organize, and access information in our programs. Choosing the right data structure can make your code cleaner, easier to write, and easier to understand.

## Common Data Structures

### Lists

A list is a collection of values in a specific order. You can add, remove, or access items using their position (index).

```python
fruits = ["apple", "banana", "cherry"]
print(fruits[0])  # Output: apple
```

Lists are useful when you want to store multiple items and care about the order they appear in.

### Dictionaries (Hash Maps)

Dictionaries store data in key–value pairs. They’re great when you want to label your data or look things up quickly.

```python
person = {"name": "Alice", "age": 25}
print(person["name"])  # Output: Alice
```

Use dictionaries when you want to associate each value with a unique name or label.

## More Complex Data Structures

As you continue learning, you’ll come across other structures like:

- **Tuples** — like lists, but immutable (can’t be changed after creation)
- **Sets** — unordered collections of unique items
- **Stacks and Queues** — for handling data in a specific order (e.g. last-in-first-out or first-in-first-out)
- **Trees and Graphs** — used in things like file systems, search engines, and social networks

You don’t need to master these yet, but knowing they exist is helpful as your programs grow more complex.

## Knowledge Checklist

- [ ] I understand what a list is and how to use it.
- [ ] I can store and access key–value pairs using a dictionary.
- [ ] I know when to use a list vs. a dictionary.
- [ ] I’m aware that other data structures like sets, tuples, and stacks exist.
- [ ] I feel more confident organizing and accessing data in my programs.
