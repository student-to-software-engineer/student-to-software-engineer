# 5.1.3. Debugging

Errors and bugs are an unavoidable part of programming — and often one of the most frustrating. No matter how experienced you become, you will always encounter code that doesn't work the way you expected.

But here's the good news: debugging is a skill. It's not about knowing all the answers, but about knowing how to _find_ the answers. With practice, you’ll get better at spotting mistakes, narrowing down causes, and fixing problems efficiently.

## Types of Errors

There are three major categories of programming errors:

### Syntax Errors

Syntax errors happen when your code breaks the rules of the language.

Example:

```python
  print("Hello"
```

This is missing a closing parenthesis and will produce a syntax error.

### Runtime Errors

Runtime errors occur _while_ the program is running, usually when something unexpected happens.

Example:

```python
result = 10 / 0
```

Dividing by zero causes a runtime crash.

### Logic Errors

Logic errors or "human error" are mistakes in the program's logic. The program runs, but it doesn’t do what you intended.

Example:

```python
def is_even(n):
    return n % 2 == 1  # Oops! This actually checks for odd numbers
```

At this stage, you should be able to identify and correct simple logic errors in code you’ve written. That means reading through your program carefully and comparing what it _does_ to what you _intended_.

## Debugging Tools

As your programs grow more complex, it becomes harder to trace problems just by reading your code. That’s where debugging tools come in.

- **Print statements** are your simplest tool. Insert them to track the flow of your program or the value of a variable.
- **Breakpoints** let you pause your program at a certain line and inspect what’s happening.
- **Stepping through code** helps you run your program one line at a time to watch its behavior.

Most code editors and IDEs (like VS Code, PyCharm, or Replit) have built-in debuggers you can explore. Learning to use these tools early will save you hours of frustration later.

### Tips for Debugging

- Read the full error message — your stack trace will often point you to the exact line where the problem occurred.
- Try to isolate the problem — comment out parts of your code and narrow down the issue.
- Don’t be afraid to Google error messages — most errors have been asked (and answered) online.
- Talk through the problem — explaining your code out loud, even to yourself, often helps you spot mistakes.

## Knowledge Checklist

- [ ] I understand the difference between syntax, runtime, and logic errors.
- [ ] I can solve simple logic errors in my own code.
- [ ] I use print statements to help track down bugs.
- [ ] I know how to use breakpoints or a debugger in my editor.
- [ ] I know how to search for error messages and find solutions.
