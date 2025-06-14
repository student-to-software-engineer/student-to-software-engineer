# 5.5.5. Cloud Services

Most modern software runs in the cloud. As a developer, understanding cloud services is crucial—not just to deploy your own projects, but to understand how real-world systems are built and scaled.

You don’t need to master every tool or memorize every acronym, but you _should_ be familiar with the major categories of cloud services and what they’re used for.

## What Are Cloud Services?

“Cloud services” are on-demand computing resources—like servers, storage, and databases—that you can use over the internet. You rent what you need, and the provider handles the hardware, scaling, and maintenance.

These services are typically provided by:

- **Amazon Web Services (AWS)**
- **Google Cloud Platform (GCP)**
- **Microsoft Azure**
- And smaller providers like **Render**, **Railway**, **Fly.io**, **Vercel**, and **Netlify**

Each platform offers dozens (or hundreds) of services, but most fall into a few key **archetypes**.

---

## Common Archetypes of Cloud Services

### 1. Compute (Run Code)

Used to run backend applications, APIs, or scheduled jobs.

- **AWS EC2** – virtual machines (traditional servers)
- **AWS Lambda / GCP Cloud Functions / Azure Functions** – serverless compute for short-lived tasks

Use this when: you want to run an Express.js, Django, or Flask server and expose it to the web.

---

### 🗃 2. Storage (Store Files)

Used to store user uploads, static assets, backups, and more.

- **AWS S3** – scalable object storage
- **Google Cloud Storage / Azure Blob Storage**
- **Cloudinary / Supabase Storage** – simpler file storage APIs

Use this when: you want users to upload profile pictures or store PDFs, images, or public assets.

---

### 🛢 3. Databases (Store Structured Data)

Used for storing application data in a structured, queryable way.

- **AWS RDS** – managed relational databases (PostgreSQL, MySQL, etc.)
- **Google Cloud SQL / Azure Database Services**
- **Supabase / Railway / PlanetScale** – developer-friendly managed DBs
- **Firestore / DynamoDB / MongoDB Atlas** – NoSQL / document databases

Use this when: you need a database for your app (user accounts, blog posts, inventory, etc.)

---

### 🌐 4. Networking & Domains

Used to route traffic to your app and expose it securely.

- **Route 53 / Cloudflare / Google Domains** – domain name and DNS management
- **AWS API Gateway** – expose and manage APIs
- **AWS CloudFront / Cloudflare CDN** – content delivery networks (CDNs)

Use this when: you want to buy a domain, add HTTPS, or make your site load faster globally.

---

### ⏱ 5. Jobs & Scheduling

Used for background tasks, cron jobs, and asynchronous processing.

- **AWS EventBridge / CloudWatch Events** – scheduled or event-based triggers
- **Render Cron Jobs / Railway Scheduled Jobs**
- **Celery + Redis / Sidekiq / BullMQ** – used inside your own app for background queues

Use this when: you want to send a daily email, process form data, or queue up tasks outside of user requests.

---

### 🔐 6. Secrets & Identity

Used for secure environment variables and authentication.

- **AWS Secrets Manager / GCP Secret Manager**
- **Doppler / HashiCorp Vault** – third-party secrets management
- **Auth0 / Firebase Auth / Clerk / Supabase Auth** – plug-and-play user authentication

Use this when: you need to store API keys, or add login/signup functionality securely.

---

## Other Cloud Tools You Should Be Aware Of

These aren’t always necessary for small projects, but they’re good to recognize:

- **Infrastructure as Code**: Terraform, Pulumi – manage infrastructure with code
- **Monitoring & Logging**: Datadog, New Relic, Grafana, AWS CloudWatch
- **Email Services**: SendGrid, Mailgun, AWS SES
- **Queues & Messaging**: AWS SQS, RabbitMQ, Kafka, Pub/Sub

---

## Why It Matters

Most companies run their software on some cloud platform. If you understand the basic service categories—compute, storage, database, networking—you’ll be able to read cloud architecture diagrams, deploy your own projects, and sound like someone who can contribute to a real system.

It also makes your portfolio projects _deployable_ and _real_. Running your backend on Render and your database on Railway? That’s already a huge step beyond “just code on GitHub.”

---

## Where To Start

1. Pick a beginner-friendly platform like **Render**, **Railway**, or **Fly.io**
2. Deploy a simple web app with a database (e.g. Node + PostgreSQL)
3. Store a few files using a service like **Cloudinary** or **S3**
4. Add a custom domain, and use environment variables for secrets
5. Schedule a background job or task (e.g. “send reminder every day”)

---

## Knowledge Checklist

- [ ] I understand the main categories of cloud services: compute, storage, database, and networking
- [ ] I can deploy an app using a compute service like Render or EC2
- [ ] I can store files using a cloud storage service like S3 or Cloudinary
- [ ] I can use a managed cloud database and connect my app to it
- [ ] I know how to use environment variables to manage secrets securely
- [ ] I’ve used at least one scheduling or background job service
- [ ] I recognize common tools like Lambda, S3, RDS, and CloudFront even if I haven’t used them yet
