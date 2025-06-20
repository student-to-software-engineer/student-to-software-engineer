# 5.4.5. Unit Tests

When you’re just getting started with programming, testing your code usually means running it and checking if the output looks right. But as your projects get bigger and more complex, that approach doesn’t scale.

That’s where **unit tests** come in.

Unit tests are small, automated tests that check whether a specific part of your code (usually a single function or class) behaves as expected. They help you catch bugs early, prevent future changes from breaking old code, and give you confidence to refactor without fear.

## What Is a Unit Test?

A **unit test** is a piece of code that:

- Sets up a specific input
- Calls a function or method
- Checks whether the output is what you expect

Here’s a simple example in Python:

```python
def add(a, b):
    return a + b

def test_add():
    assert add(2, 3) == 5
```

If `add(2, 3)` returns anything other than 5, the test fails.

## Why Unit Tests Matter

Even though they might feel like extra work at first, unit tests:

- **Save time in the long run** by catching bugs before they cause bigger issues
- **Make code safer to change** because you’ll know immediately if you broke something
- **Document how code is supposed to work**
- **Help teams work together** without stepping on each other’s toes

Professional developers write tests for almost everything they build—especially core logic that can’t afford to break.

## When Should You Write Them?

As a student or beginner, you don’t need to test _everything_. But it’s good to start writing unit tests for:

- Pure functions with clear inputs and outputs
- Core logic that everything else depends on
- Edge cases that could cause bugs (e.g. dividing by zero, empty inputs)

Just start somewhere. Even one or two tests can make a big difference.

## What Tools should You Use?

Most languages have built-in or popular third-party testing libraries. Some examples:

- **Python** – `pytest`
- **JavaScript/TypeScript** – `Jest`, `Mocha`
- **Java** – `JUnit`
- **C#** – `xUnit`, `NUnit`

These tools provide ways to write tests, run them, and see which ones pass or fail.

## What Makes a Good Unit Test?

- **Clear and focused** – Each test should check one specific thing.
- **Repeatable** – Tests should always give the same result every time.
- **Fast** – Good unit tests run in milliseconds, so you can run them constantly.
- **Descriptive** – A test that fails should make it obvious what went wrong.
