# 5.5.10. Observability

You can’t fix what you can’t see.

As your software grows, bugs will happen, performance will degrade, and strange issues will show up in production that never happened in development. **Observability** is how you deal with that.

**Observability** is the practice of collecting and analyzing data from your running software so you can understand how it's behaving—and why it's behaving that way. It helps you debug problems, monitor performance, and keep your systems reliable.

## The Core Pillars of Observability

Observability is often broken into **three pillars**:

### 1. **Logging**

Logs are text-based records of what your software is doing. Think of them as time-stamped messages that your app writes out as it runs.

Example:

```

[2025-06-20 12:00:01] User 42 logged in.
[2025-06-20 12:00:05] Error: Payment failed due to missing token.

```

Logs help you:

- See what happened right before a crash
- Trace a user's activity through the system
- Capture errors and internal state

Use structured logs (e.g. JSON) if possible, so machines can parse and search them easily.

### 2. **Metrics**

Metrics are numeric data points collected over time. These are used to monitor trends and performance at a glance.

Examples:

- Requests per second
- Error rate
- Average response time
- CPU or memory usage

Metrics are great for dashboards and alerts. You don’t read metrics line-by-line—you graph them.

### 3. **Tracing**

Tracing shows the **flow of a single request** as it travels through your system, especially in a microservice or distributed architecture.

A trace helps answer:

- Where did the request slow down?
- Which service caused the failure?
- How long did each step take?

Tools like **OpenTelemetry**, **Jaeger**, and **Honeycomb** provide distributed tracing features.

## Why Observability Matters

- **Faster debugging**: You can’t just console.log your way through production bugs.
- **Better uptime**: Observability helps detect problems before users even report them.
- **Performance tuning**: Helps you find bottlenecks and optimize code.
- **Team confidence**: Engineers feel more comfortable making changes when they can see the results in real time.

## Tools You’ll See in the Wild

Some common observability tools:

| Type       | Examples                                  |
| ---------- | ----------------------------------------- |
| Logging    | Logtail, Loggly, Loki, Fluentd            |
| Metrics    | Prometheus, Datadog, Grafana Cloud        |
| Tracing    | Jaeger, Zipkin, Honeycomb                 |
| All-in-one | Datadog, New Relic, Sentry, OpenTelemetry |

## Monitoring

**Monitoring** is the process of watching your system in real time to detect when something goes wrong.

Whereas observability is about understanding what's happening and why, **monitoring** is about knowing when you need to take action.

Monitoring tools are usually configured with **alerts**—rules that notify you when certain thresholds are crossed.

Examples:

- Send an alert if the error rate goes above 5%
- Trigger a PagerDuty call if response time exceeds 1 second for 10 minutes
- Email the dev team if disk space drops below 10%

Monitoring answers the question: “Is the system healthy right now?”

Good monitoring helps teams:

- Catch incidents before users do
- Respond faster when outages occur
- Sleep better knowing someone (or something) is watching

Many observability tools include built-in monitoring and alerting features—**Prometheus**, **Datadog**, and **New Relic**, for example, let you graph metrics and trigger alerts on thresholds.

## Observability vs. Monitoring

- **Monitoring** is about **alerting** you when something goes wrong.
- **Observability** is about giving you the data to **understand why** it went wrong.

Monitoring is reactive. Observability enables proactive debugging and long-term stability.
