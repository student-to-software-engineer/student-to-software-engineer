# 5.2.4. Deployment with PaaS

**Deployment** is the process of making your app publicly accessible on the internet. Luckily, you don’t have to set up a physical server or run commands in a terminal forever. Thanks to **Platforms as a Service (PaaS)**, it’s easier than ever to deploy and manage your apps.

## What Is a Platform as a Service (PaaS)?

A **PaaS** is a tool that handles the messy infrastructure stuff for you — things like servers, domains, storage, environment variables, and restarts.

When you provide your code to a PaaS, it automatically builds, runs, and hosts your application online, ensuring it stays up and accessible around the clock—so you can focus on writing code instead of managing servers.

Under the hood, what’s really happening is simple: **your code is running on someone else’s computer**.

Just like how you might run `npm start` or `python app.py` on your own machine during development, the PaaS spins up a remote computer (a virtual machine or container), installs your dependencies, runs your app, and serves it to the internet.

It's the same process — just on someone else’s box, with a bunch of automation layered on top.

## Beginner-Friendly Deployment Platforms

Here are some great tools you can start using **for free**:

### GitHub Pages

- Best for: Static websites (HTML, CSS, JS)
- How it works: Push your code to a GitHub repo, enable Pages, and your site gets published automatically.

### Render & Heroku

- Best for: Full-stack apps (frontend + backend + database)
- How it works: Connect your GitHub repo, then the PaaS builds and runs your app and gives you a live URL.
- Supports: Node.js, Python, databases (PostgreSQL), background workers, and more.

These platforms automatically host your app, build your code, provide logging, handle scaling, secure your site with HTTPS, and give you a public URL. They also offer dashboards for setting environment variables, monitoring logs, and managing deployments. Using a PaaS means you don’t have to manage servers, configure web servers, or worry about security and uptime—they handle all the infrastructure so you can focus on your code.

## Knowledge Checklist

- [ ] I understand what a PaaS is and what it handles for me.
- [ ] I’ve deployed a static site using GitHub Pages.
- [ ] I’ve deployed a backend or full-stack app using Render or Heroku.
- [ ] I know how to set environment variables in a PaaS dashboard.
- [ ] I’ve connected a GitHub repo to trigger automatic deployments.
