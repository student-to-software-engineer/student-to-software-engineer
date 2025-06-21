# 5.5.1. The Components of Software

Software isn't just a single thing—it’s a **system** made up of many moving parts.

As projects grow from scripts to full-blown applications, they start involving different layers and services working together behind the scenes. If you’ve ever wondered what “real software” actually includes, this section breaks it down.

## 1. Application Code

At the core is your **application logic**—this is the code you write.

- It defines your business rules (e.g. “users must be logged in to post”).
- It handles user input, processes data, and decides what should happen.
- It’s usually organized into functions, classes, or services depending on the language and framework you're using.

This code is what you deploy, test, and maintain over time.

## 2. Databases

Almost every application needs to store data: users, orders, messages, or configuration settings.

There are many types of databases, but the most common are:

- **Relational Databases** (e.g., PostgreSQL, MySQL, SQLite): Store data in structured tables with relationships.
- **Key-Value Stores** (e.g., Redis, DynamoDB): Store data as key-value pairs, great for caching and fast lookups.
- **Document Stores** (e.g., MongoDB, CouchDB): Store data as JSON-like documents, allowing for flexible schemas.
- **Wide-Column Stores** (e.g., Cassandra, HBase): Store data in rows and columns but allow for flexible schemas.
- **Time-Series Databases** (e.g., InfluxDB, TimescaleDB): Optimized for storing and querying time-stamped data.
- **Search Engines** (e.g., Elasticsearch, Solr): Specialized for full-text search and analytics.
- **Graph Databases** (e.g., Neo4j): Store data as nodes and edges, ideal for complex relationships (like social networks).

## 3. User Interfaces

The **user interface (ui)** is what users see. It’s usually built with:

- **HTML/CSS/JavaScript**
- Frameworks like **React**, **Vue**, or **Svelte**
- Mobile apps use **Swift** (iOS) or **Kotlin** (Android)

The frontend sends API requests to the backend, displays data to the user, and handles interactivity.

## 4. APIs

Modern apps talk to each other via **APIs (Application Programming Interfaces)**.

Some common protocols and formats include:

- **REST** (Representational State Transfer): Uses HTTP methods (GET, POST, PUT, DELETE) to interact with resources.
- **GraphQL**: A query language for APIs that allows clients to request exactly the data they need.
- **gRPC**: A high-performance RPC framework that uses Protocol Buffers for serialization.
- **WebSockets**: For real-time communication, like chat apps or live updates.

APIs allow different parts of your system to communicate without needing to know the details of each other’s implementation.

Some examples of how APIs fit into the software stack:

- Your backend exposes an API for your frontend to consume.
- Your mobile app might call the same API as your web app.
- Your backend might talk to third-party APIs like Stripe (payments), Twilio (SMS), or OpenAI (AI).

APIs expose specific functionality in a predictable way—just like plug-and-play parts.

## 5. Cron Jobs / Scheduled Tasks

Not everything needs to run when a user clicks a button. Sometimes you need **background work** to happen on a schedule.

That’s what **cron jobs** are for.

Examples:

- Send daily email reports at 9am
- Clean up expired sessions every night
- Recalculate leaderboard rankings hourly

These are usually small scripts run by a **task scheduler** like `cron`, **Celery Beat**, or **Sidekiq Scheduler**.

## 6. Background Workers / Queues

Some tasks take too long to run in a web request—like sending an email or processing a video.

Instead, you put those tasks on a **queue** and let a **background worker** handle them asynchronously.

Tools:

- **Redis Queue (RQ)**, **Sidekiq**, **Celery**, or **Bull**
- Message brokers like **RabbitMQ**, **Kafka**, or **SQS**

This helps keep your app fast and responsive while offloading long tasks in the background.

## 7. File Storage

Some apps need to store files: profile pictures, PDFs, audio, or videos.

You don’t usually store files in your database. Instead, you use:

- **Cloud storage** (e.g., Amazon S3, Google Cloud Storage)
- A **CDN (Content Delivery Network)** to deliver files quickly to users around the world

## 8. Caching

If your app does something slow or expensive often (like a database query or API call), it helps to **cache** the result.

Popular caching tools:

- **Redis** or **Memcached** for in-memory key/value storage
- **HTTP caching** (e.g. Cloudflare) for static content

This makes your app **faster**, **cheaper**, and **more scalable**.

## 9. Logging & Monitoring

When something breaks in production, how do you know what happened?

- **Logs** (e.g. via Logtail, Loggly, or Datadog) help you track what your app is doing
- **Monitoring tools** like Prometheus or Grafana help you watch CPU, memory, and error rates
- **Alerting tools** (e.g. PagerDuty, Opsgenie) notify your team when something goes wrong

This is critical for real-world reliability.

## 10. Authentication & Authorization

If your app has users, it needs to:

- **Authenticate** them (who are you?)
- **Authorize** them (what are you allowed to do?)

You can build this yourself or use services like:

- **Auth0**, **Clerk**, **Firebase Auth**
- Internal systems with JWTs, sessions, or OAuth

Security is non-negotiable in modern software.
