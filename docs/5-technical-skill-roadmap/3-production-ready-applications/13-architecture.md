# 5.3.13. Architectures

As your software projects grow, you’ll need to make big-picture decisions about how your code is structured, how different parts communicate, and how your app will scale over time.

Software architecture is the high-level blueprint for how a system is organized. It affects everything—how your team works, how easily you can add features, and how well your app performs under load.

There’s no one-size-fits-all approach. Below are four common architectural styles you’ll see in the real world.

## Monolithic Architecture

A **monolith** is a single, unified codebase that contains your entire application: frontend, backend, business logic, and database access—everything in one deployable unit.

**Pros:**

- Simple to get started
- Easy to test and deploy
- Great for small teams and early-stage products

**Cons:**

- Can grow into a tangled mess (“spaghetti code”) as the codebase scales
- Harder to update parts independently
- One bug can bring down the whole app

**Use this when:** You’re building an MVP, small project, or early version of your product. Monoliths are not “bad”—they’re just best suited for simpler systems.

## Microservices Architecture

In a **microservices** architecture, your application is split into many small, independent services. Each service is responsible for a specific business capability and communicates with others over the network (often using REST or gRPC APIs).

Example: A social media app might have separate services for user accounts, notifications, messaging, and file storage.

**Pros:**

- Teams can work on services independently
- Easier to scale parts of the system individually
- Failures are isolated to smaller areas

**Cons:**

- More complex infrastructure and deployment
- Debugging and testing can be harder
- Network latency and failures are real issues

**Use this when:** You have a growing engineering team and a complex product that needs to scale independently in different areas.

## Event-Driven Architecture

An **event-driven** architecture is built around the idea that parts of your system can **react to events** instead of calling each other directly.

Services communicate by **publishing** and **subscribing** to events using a message broker (like Kafka, RabbitMQ, or SNS/SQS).

Example: When a user uploads a photo:

1. An “image_uploaded” event is published.
2. A background service resizes the image.
3. Another service logs the upload.
4. Yet another service sends a notification.

**Pros:**

- Highly decoupled and flexible
- Good for asynchronous, real-time systems
- Easy to add new behaviors by listening to existing events

**Cons:**

- Harder to trace what’s happening (requires observability tools)
- Failure handling and retries can get tricky
- Order of events isn’t always guaranteed

## Serverless Architecture

**Serverless** doesn’t mean “no servers”—it means you don’t manage them.

Instead of running your own app server 24/7, you write **functions** that run in response to specific triggers (e.g. HTTP requests, cron jobs, file uploads). These functions are deployed to cloud platforms like AWS Lambda, Google Cloud Functions, or Vercel.

**Pros:**

- You only pay for what you use (great for low-traffic apps)
- Automatically scales with demand
- No server maintenance

**Cons:**

- Cold starts (slower first request after idle time)
- Limited execution time and memory
- Can be hard to test locally
- Not great for complex, long-running processes

**Use this when:** You want to build lightweight APIs, automation scripts, or backend services without managing infrastructure.
