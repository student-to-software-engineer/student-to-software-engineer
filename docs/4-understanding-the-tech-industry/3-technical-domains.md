# 4.3. Technical Domains

When people talk about “working in tech,” they often think in terms of roles—like frontend developer or data scientist. But once you’re on a team, you’re usually solving problems in a specific domain.

A domain is just a fancy way of saying “problem space.” It’s a slice of the system that focuses on one type of functionality.

The following are some of the most common most companies have, but every company will also have their own unique domains based on their product and business model.

## Authentication & Authorization (Auth)

This domain is about **who can access what**.

- Handling logins, sign-ups, password resets, multi-factor authentication
- Managing sessions and tokens (e.g. JWT, cookies)
- Enforcing user permissions (e.g. admin vs regular user)

Why it matters: It’s the gateway to your product. Get it wrong, and you open the door to major security vulnerabilities.

## Payments & Billing

Focused on **transferring money** between users and businesses.

- Integrating with providers like Stripe, PayPal, or Square
- Handling invoices, receipts, refunds, taxes
- Ensuring compliance with legal and financial regulations

Why it matters: It directly affects revenue. Mistakes here can cost real money or get your company in legal trouble.

## Notifications & Messaging

Responsible for **sending messages** between users or from the system.

- Email, push notifications, SMS, in-app messages
- Rate limiting, delivery retries, queuing (e.g. background jobs)
- User notification preferences and localization

Why it matters: Good notification systems improve user engagement. Bad ones are ignored or marked as spam.

## Search

Focused on helping users **find what they’re looking for** quickly.

- Indexing large datasets
- Designing intuitive queries (e.g. fuzzy search, filtering, ranking)
- Leveraging tools like Elasticsearch or PostgreSQL full-text search

Why it matters: If users can’t find what they need, they’ll leave. Great search UX can be a product differentiator.

## Scheduling & Time Management

Handles anything involving **dates, calendars, or timing logic**.

- Event scheduling, recurring events, availability detection
- Time zone support and conversions
- Conflict resolution and reminders

Why it matters: Time-based features seem easy until you dig in. Timezones and recurrence rules are notoriously tricky to get right.

## Analytics & Event Tracking

Used to **understand how users behave**.

- Logging user actions and system events
- Aggregating and analyzing data
- Powering dashboards, metrics, KPIs

Why it matters: Data drives decisions. Without analytics, teams fly blind.

## File Uploads & Media Processing

About handling **user-generated content**, like images, videos, or files.

- File storage (e.g. S3), uploads, previews
- Image resizing, video transcoding
- Access control for private files

Why it matters: Media is everywhere. Handling it well improves performance and user experience.
