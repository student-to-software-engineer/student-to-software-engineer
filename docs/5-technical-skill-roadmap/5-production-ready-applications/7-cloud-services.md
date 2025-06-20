# 5.5.7. Cloud Services

In the past, launching a software project meant buying physical servers, configuring hardware, and maintaining everything yourself. Today, you can deploy and scale apps instantly using cloud services.

Cloud platforms give you on-demand access to computing resources—like servers, storage, and databases—without having to manage the infrastructure yourself. Understanding the cloud is essential for modern software development.

You don’t need to master every tool or memorize every acronym, but you _should_ be familiar with the major categories of cloud services and what they’re used for.

## What “The Cloud” Actually Means

“The cloud” just refers to other people’s computers—powerful machines in data centers that you access over the internet.

You pay for only what you use, and the provider handles the hardware, networking, uptime, and scalability.

“Cloud services” are on-demand computing resources—like servers, storage, and databases—that you can use over the internet. You rent what you need, and the provider handles the hardware, scaling, and maintenance.

These services are typically provided by:

- **Amazon Web Services (AWS)**
- **Google Cloud Platform (GCP)**
- **Microsoft Azure**
- And smaller providers like **Render**, **Railway**, **Fly.io**, **Vercel**, and **Netlify**

Each platform offers dozens (or hundreds) of services, but most fall into a few key **archetypes**.

## Key Cloud Services Every Developer Should Know

Beyond just understanding cloud models like IaaS or PaaS, it helps to know the **actual services** that most companies—and many student projects—rely on. Here are the essentials:

### Compute: Run Your Code

**Purpose:** Run your application, backend, or API server.

| Service                                           | Type | Description                                                          |
| ------------------------------------------------- | ---- | -------------------------------------------------------------------- |
| **EC2 (AWS)**                                     | IaaS | Create virtual machines with full control over the OS and resources. |
| **Google Compute Engine**                         | IaaS | Similar to EC2, for VMs in GCP.                                      |
| **Heroku / Render / Railway**                     | PaaS | Push code and let the platform handle the rest—ideal for beginners.  |
| **Cloud Functions / Lambda / Firebase Functions** | FaaS | Run code on-demand with no server management (a.k.a. serverless).    |

### Databases: Store Your Data

**Purpose:** Store structured or unstructured data for your application.

| Service                              | Type      | Description                                             |
| ------------------------------------ | --------- | ------------------------------------------------------- |
| **Amazon RDS**                       | PaaS      | Managed relational databases like PostgreSQL or MySQL.  |
| **Firebase Realtime DB / Firestore** | SaaS/PaaS | JSON-based NoSQL databases for realtime apps.           |
| **Supabase**                         | PaaS      | Open-source Firebase alternative with Postgres.         |
| **MongoDB Atlas**                    | SaaS      | Managed NoSQL document database (MongoDB) in the cloud. |

### Storage: Save Files and Media

**Purpose:** Store files like images, PDFs, or user uploads.

| Service                 | Type | Description                                          |
| ----------------------- | ---- | ---------------------------------------------------- |
| **Amazon S3**           | IaaS | Scalable object storage used everywhere.             |
| **Cloud Storage (GCP)** | IaaS | Google’s equivalent of S3.                           |
| **Supabase Storage**    | PaaS | Simple file storage with built-in auth for web apps. |
| **Firebase Storage**    | PaaS | Great for uploading user files from mobile/web apps. |

### Hosting & CDN: Serve Your Frontend

**Purpose:** Deliver your static or frontend code (like a website or React app).

| Service              | Type | Description                                                        |
| -------------------- | ---- | ------------------------------------------------------------------ |
| **Vercel**           | PaaS | Seamless frontend hosting for Next.js and other modern frameworks. |
| **Netlify**          | PaaS | Another easy-to-use platform for JAMstack apps.                    |
| **Cloudflare Pages** | SaaS | Fast static site hosting with a global CDN.                        |

## Authentication: Manage Users & Logins

**Purpose:** Let users sign up, log in, and manage sessions securely.

| Service           | Type | Description                                               |
| ----------------- | ---- | --------------------------------------------------------- |
| **Firebase Auth** | SaaS | Handles signup, login, social auth, and sessions.         |
| **Auth0**         | SaaS | Flexible and powerful auth-as-a-service for any app.      |
| **Supabase Auth** | PaaS | Built-in auth with Postgres, works well with Supabase DB. |

## How to Think About These Services

When you build and deploy a real-world app, you usually need:

- **Compute** → to run your code
- **Database** → to store your app data
- **Storage** → to store files (optional)
- **Auth** → to manage users (optional)
- **Hosting/CDN** → to serve your frontend

Even a simple project can become powerful and production-ready just by combining a few of these services.

### Knowledge Checklist

- [ ] I understand what compute, storage, and databases are in the cloud
- [ ] I’ve connected a cloud-hosted database to a project
- [ ] I know how to store files or images in cloud storage
- [ ] I’ve added user authentication using a managed service
- [ ] I understand which services are IaaS, PaaS, or SaaS
