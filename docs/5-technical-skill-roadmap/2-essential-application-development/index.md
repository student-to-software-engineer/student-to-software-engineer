# 5.2. L2: Simple Web Applications

Level 1 is about writing code that runs. Level 2 is about writing code that people can actually use—over the web, with a real interface, data that persists, and maybe even some users.

At this level, your goal is to build and ship a basic full-stack application—nothing fancy, just something that ties together a frontend, backend, and database. You’ll make design choices, deal with bugs, wrestle with deployment, and start to understand how all the moving pieces of modern software fit together.

Most of the skills in this chapter do not depend on each other, but do depend on the skills you learned in Level 1. You can learn them in any order, but they all contribute to your ability to build a complete application.

```mermaid
graph TD

    %% --- Programming Fundamentals (5.3) ---
    A[5.3.1<br>Basic Syntax]
    B[5.3.4<br>Data Structures]
    C[5.3.5<br>Dependencies]
    D[5.3.3<br>Debugging]
    E[5.3.2<br>The Terminal]
    F[5.3.8<br>Git & Version Control]
    G[5.3.6<br>Object Oriented Programming]
    H[5.3.7<br>Pointers & Memory Management]

    %% --- Application Development (4.x) ---
    I[5.4.1<br>HTML, CSS, JS]
    J[5.4.2<br>REST APIs]
    K[5.4.3<br>Data Persistence]
    L[5.4.4<br>Deployment with PaaS]
    M[5.4.5<br>Unit Tests]
    N[5.4.6<br>SOLID Principles]
    O[5.4.7<br>Data Structures & Algorithms]

    %% --- Edges: Fundamentals ---
    A --> B
    A --> C
    A --> D
    A --> F
    E --> F
    E --> C
    E --> D
    B --> G
    B --> H

    %% --- Edges: Transition to Application Dev ---
    G --> I
    C --> J
    C --> K
    F --> L
    D --> M
    G --> N
    B --> O
    B --> K

    %% --- Clickable Links ---
    click A "/docs/technical-skill-roadmap/programming-fundementals/beginner-syntax"
    click B "/docs/technical-skill-roadmap/programming-fundementals/data-structures"
    click C "/docs/technical-skill-roadmap/programming-fundementals/dependencies"
    click D "/docs/technical-skill-roadmap/programming-fundementals/debugging"
    click E "/docs/technical-skill-roadmap/programming-fundementals/the-terminal"
    click F "/docs/technical-skill-roadmap/programming-fundementals/git-and-version-control"
    click G "/docs/technical-skill-roadmap/programming-fundementals/object-oriented-programming"
    click H "/docs/technical-skill-roadmap/programming-fundementals/pointers-and-memory-management"

    click I "/docs/essential-application-development/html-css-js"
    click J "/docs/essential-application-development/rest-apis"
    click K "/docs/essential-application-development/data-persistence"
    click L "/docs/essential-application-development/deployment-with-paas"
    click M "/docs/essential-application-development/unit-tests"
    click N "/docs/essential-application-development/solid-principals"
    click O "/docs/essential-application-development/data-structures-and-algorithms"
```

## Why Web Applications?

Web applications are a popular development choice because anyone with a browser can use them. In contrast, native applications require users to install software and are often tied to a specific device or operating system.

Instead of having to build a separate app for each platform (iOS, Android, Windows, etc.), you can build a single web application that runs on any device with a web browser. This makes web applications more accessible and easier to maintain.

## Do I Need To Know Frontend and Backend?

As you'll recall from chapter 4, the answer is no. You don't need to specialize in both to get hired.

But the reality is that with the difficulty of finding a job, having the skills needed to do both frontend and backend development will make you a more attractive candidate.
