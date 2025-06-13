# 5.5.4. Docker

Docker allows you to package your application and its dependencies into a standardized unit called a container.

A container is a package that includes everything needed to run a piece of software, including the code, runtime, libraries, etc.

This makes it easy to run your application in any environment, whether it's your local machine, a staging server, or a production cloud service.

Containers can talk to each other and share resources, which is essential for building complex applications that consist of multiple services (like a web server, a database, and a cache).

Combined with a cloud orchestration platform like Kubernetes, you can scale your application seamlessly and manage complex deployments.

## Where to Start

Install Docker Desktop and try to create a docker file for a any of your existing projects. Then try to use docker-compose to run multiple containers together (for example, a web server and a database).

## Example: Dockerizing a Web App with a Database

Let's say you have a simple Node.js app that connects to a PostgreSQL database. Here's how you can set up Docker and Docker Compose for this scenario.

### 1. `Dockerfile` for an Example Node.js App

```dockerfile
# Use the official Node.js image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose the app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
```

### 2. `docker-compose.yml` to Run App and Database

```yaml
version: "3.8"
services:
  db:
    image: postgres:15
    environment:
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
      POSTGRES_DB: mydb
    ports:
      - "5432:5432"
    volumes:
      - db_data:/var/lib/postgresql/data

  app:
    build: .
    environment:
      DATABASE_URL: postgres://user:password@db:5432/mydb
    ports:
      - "3000:3000"
    depends_on:
      - db

volumes:
  db_data:
```

### How to Run

1. Place the `Dockerfile` in your app's root directory.
2. Place the `docker-compose.yml` in the same directory.
3. Run `docker-compose up` to start both the app and the database.

This setup allows you to develop and test your app in an environment similar to production.

## How Is This Different from Virtual Machines?

Containers are often confused with virtual machines (VMs), but they are different in several key ways:

- **Lightweight**: Containers share the host OS kernel, making them much more lightweight than VMs, which require a full OS for each instance.
- **Faster Startup**: Containers can start in seconds, while VMs can take minutes to boot up.
- **Portability**: Containers can run on any system that has Docker installed, regardless of the underlying OS, as long as it supports the container runtime.
- **Resource Efficiency**: Containers use fewer resources than VMs because they don't require a full OS for each instance.

## What Is Kubernetes?

Kubernetes is an open-source platform for automating the deployment, scaling, and management of containerized applications.

In Kubernetes, you can define rules to automatically scale your application based on resource usage. For example, you can use a Horizontal Pod Autoscaler (HPA) to scale the number of pods up or down depending on CPU utilization.

Here's a simple example of a Kubernetes HPA configuration that scales your deployment when CPU usage exceeds 50%:

```yaml
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
    name: example-app-hpa
spec:
    scaleTargetRef:
        apiVersion: apps/v1
        kind: Deployment
        name: example-app
    minReplicas: 2
    maxReplicas: 10
    metrics:
        - type: Resource
            resource:
                name: cpu
                target:
                    type: Utilization
                    averageUtilization: 50
```

This configuration tells Kubernetes to monitor the CPU usage of the `example-app` deployment and automatically adjust the number of pods between 2 and 10 to maintain an average CPU utilization of 50%.

## Knowledge Checklist

- [ ] I understand what Docker is and how it differs from virtual machines.
- [ ] I can create a Dockerfile to containerize a simple application.
- [ ] I can use Docker Compose to run multi-container applications.
- [ ] I understand the basics of Kubernetes and how it can be used to manage containerized applications.
