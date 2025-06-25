# 5.2.7. Data Structures and Algorithms

If programming is the ability to tell a computer what to do, then **data structures and algorithms** are the tools and strategies you use to do it efficiently.

Every meaningful program you build—whether it’s a website, game, or app—relies on managing data and solving problems. That’s where this topic becomes essential. Mastering the fundamentals of data structures and algorithms will help you write faster, cleaner, and more effective code.

## What Is a Data Structure?

A **data structure** is a way to store and organize data so it can be used efficiently.

Different data structures are better suited for different kinds of tasks. For example:

- **Arrays** and **Lists** store elements in order.
- **Stacks** and **Queues** manage elements with specific access rules (LIFO/FIFO).
- **Hash Maps** allow fast lookup by key.
- **Trees** and **Graphs** model hierarchical or connected relationships.

Choosing the right data structure is like choosing the right container for a task. You wouldn’t store soup in a paper bag—and you shouldn’t use a list for fast key lookups.

## What Is an Algorithm?

An **algorithm** is a step-by-step process for solving a problem.

For example, sorting a list of numbers, finding the shortest path between two points, or checking whether a string is a palindrome—all of these require algorithms.

You can write many different algorithms to solve the same problem, but not all of them are equally efficient. That’s why we use a system to measure performance.

## Big O Notation

**Big O notation** is how we describe the performance of an algorithm—especially how it scales as the size of the input grows.

Here are some common examples:

- `O(1)` – Constant time (e.g., accessing an element in an array by index)
- `O(log n)` – Logarithmic time (e.g., binary search)
- `O(n)` – Linear time (e.g., iterating through a list)
- `O(n log n)` – (e.g., efficient sorting algorithms like mergesort)
- `O(n^2)` – Quadratic time (e.g., comparing all pairs in a list)

Big O doesn't give you an exact runtime, but it gives you a way to talk about how your code behaves as the input grows—and helps you spot performance problems early.

## Don’t Forget About Graphs

One of the most powerful and versatile data structures is the **graph**.

A **graph** is a set of **nodes** (also called vertices) connected by **edges**. You can use graphs to model:

- Social networks
- Maps and navigation
- Web page links
- Dependencies in software systems

Understanding how to represent and traverse graphs (e.g., with **BFS** or **DFS**) opens up a huge range of problem-solving abilities.

## Where To Start

- Learn the basics: arrays, linked lists, stacks, queues, hash maps
- Practice problems involving sorting, searching, and recursion
- Explore trees and graphs once you're comfortable with the basics
- Use platforms like [LeetCode](https://leetcode.com/), [HackerRank](https://www.hackerrank.com/), or [VisuAlgo](https://visualgo.net/) to practice and visualize

## Knowledge Checklist

- [ ] I understand what a data structure is and why different data structures suit different tasks.
- [ ] I can explain when to use arrays, lists, stacks, queues, hash maps, trees, and graphs.
- [ ] I understand what an algorithm is and can give examples of common algorithms (e.g., sorting, searching).
- [ ] I know what Big O notation is and how it describes algorithm performance as input size grows.
- [ ] I can identify the time and space complexity of my own code using Big O notation.
- [ ] I understand what a graph is and can describe real-world examples where graphs are useful.
- [ ] I know basic graph traversal methods like breadth-first search (BFS) and depth-first search (DFS).
- [ ] I can identify when a performance problem might be due to an inefficient data structure or algorithm.
