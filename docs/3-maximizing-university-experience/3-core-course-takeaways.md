# 3.3. Core Course Takeaways

While you are a student, it is difficult to see the big picture of how all the courses you take fit together.

Additionally, not everthing in university is mission critical to your goal of becoming a software engineer.

Knowing what to focus on in each course will help you get the most out of your time in university.

Here are some of the core courses you will likely take in a computer science program, and what you should focus on in each one.

## Data Structures and Algorithms Analysis Course

This course is NOT about memorizing algorithms, data structures, and their runtimes. It's about learning the common patterns so that you are capable of designing your own algorithms and data structures to solve problems.

Many students will tell you this course is important "because it teaches you how to code for job interviews." and while there is some truth to that, you will enivitable have to build some kind of performance critical system in your career, and this course will help give you the foundations for that.

### What Is Typically Covered

- Sorting and searching algorithms
- Recursion and divide & conquer
- Hash tables, trees, graphs, and heaps
- Big-O complexity analysis
- Greedy, dynamic programming, and backtracking techniques

### What You Should Focus On

- Pattern recognition: understand why and when to use certain algorithms
- Tradeoffs between different data structures
- Developing strong problem-solving habits and code clarity
- Practicing writing code under constraints (interview prep can actually help with this!)

### What Not to do

- Don’t just memorize algorithms—focus on understanding the underlying principles
- Don't get bogged down in theoretical proofs; focus on practical applications

## Operating Systems Course

This course usually focusses on the fundamentals of how operating systems work, including process management, memory management, file systems, and concurrency.

Now do you need to be a linux kernel developer to be a good software engineer? No.

However, there are a lot of concepts related to operating systems that are very relevant to building software.

A key part of a software engineer's job is to "operate systems" such as large distributed systems, databases, and cloud platforms.

Concepts like resiliency, fault tolerance, and concurrency are all critical to building robust software systems, and these concepts are often covered in operating systems courses.

Additionally, containers and container orchestration (e.g. Kubernetes) technology critical to building horizontal scaling systems are built on top of operating system concepts, so having a solid understanding of operating systems will help you understand how these technologies work.

## Computer Networks Course

## Database Course

Every software engineer will work with databases at some point in their career, so this course is essential.

### What Is Typically Covered

### What You Should Focus On

Do you need to memorize all the fancy proofs for relational algebra and normalization? No.

But you should understand the basics of how databases work, including SQL, database design and concepts like ACID transactions, indexing, and query optimization.

I also find that university database courses focus mostly on relational databases, but in the real world, you will need to understand many different database paradigms.

Without the context of understanding these different database paradigms, you might be confused at why a course like this is spending an entire lecture to discuss what a B+ tree is. The reason why is not every database uses a B+ tree, and understanding the different data structures used in databases will help you understand how to choose the right database for your application.

For example, Cassandra uses a log-structured merge tree (LSM tree) for its storage engine, which makes it better for write-heavy workloads, while MongoDB uses a B-tree for its storage engine, which makes it better for read-heavy workloads.
