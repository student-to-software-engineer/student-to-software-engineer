# 5.2.3. Data Persistence

Apps aren’t very useful if they forget everything when you refresh the page. _Data persistence_ is about storing information in a way that outlives a single session — like saving user accounts, blog posts, or todo list items.

That’s where **databases** come in.

A database lets your application _remember_ things. You can store data, look it up later, update it, or delete it. Most beginner web apps use a database to handle Create, Read, Update, and Delete (CRUD) operations.

If you’ve built a form on a website and saved the results — congratulations, you’ve used data persistence.

## Common Types of Databases

When you are starting out, you'll be told there are two main types of databases:

- **Relational databases** (e.g., SQLite, PostgreSQL, MySQL)
  - Store data in **tables**, like a spreadsheet
  - Use **SQL** (Structured Query Language) to read/write data
  - Have relationships between rows (e.g., a `users` table and a `posts` table)
- **NoSQL databases** (e.g., MongoDB, Firebase)
  - Store data as **documents** or **key-value pairs** (they're basically a huge hash map)
  - More flexible, but less strict about structure

As a beginner, you’ll probably use SQLite or MongoDB first.

## Simple Example (SQL)

Here’s what saving and retrieving a todo might look like in SQL:

```sql
-- Create a table
CREATE TABLE todos (
  id INTEGER PRIMARY KEY,
  task TEXT,
  completed BOOLEAN
);

-- Add a new task
INSERT INTO todos (task, completed) VALUES ('Learn SQL', false);

-- Get all tasks
SELECT * FROM todos;
```

## Connecting a Web App to a Database

Here’s the simplest possible JavaScript code snippet to connect to an SQLite database using the sqlite3 package in Node.js:

```javascript
const sqlite3 = require("sqlite3");

// Connect to (or create) a database file
const db = new sqlite3.Database("my-database.db");

// Create a table
db.run(`CREATE TABLE IF NOT EXISTS todos (
  id INTEGER PRIMARY KEY,
  task TEXT,
  completed BOOLEAN
)`);

// Insert a row
db.run(`INSERT INTO todos (task, completed) VALUES (?, ?)`, [
  "Learn SQLite",
  false,
]);

// Read rows
db.all(`SELECT * FROM todos`, (err, rows) => {
  console.log(rows);
});
```

## Knowledge Checklist

- [ ] I understand what data persistence means and why it's important.
- [ ] I’ve used a database (like SQLite) to store and retrieve information.
- [ ] I can perform READ, CREATE, UPDATE, and DELETE (CRUD) with SQL
- [ ] I understand the difference between relational and NoSQL databases.
- [ ] I can describe the concept of primary keys and relationships between tables.
- [ ] I’ve connected a backend app to a database and queried it dynamically.
