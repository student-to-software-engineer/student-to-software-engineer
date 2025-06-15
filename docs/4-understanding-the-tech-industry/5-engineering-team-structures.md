# 4.5. Engineering Team Structures

Every tech company is structured a little differently—but once you’ve seen a few setups, patterns start to emerge.

**NOTE:** The structures described here are common, but not universal. Each company may have its own variations and nuances and the semantic I've used here may not match exactly with how your company describes its teams.

Let’s break down how software teams are usually organized, and what each structure means for you.

## Feature Teams

These teams are organized around **delivering features** to users.

- Each team owns a slice of the product (e.g. “Payments Team,” “Chat Team”)
- Includes frontend, backend, PM, designer, and maybe QA all working together
- Team is responsible for **building, testing, and maintaining** their piece of the app

**Good for:** End-to-end ownership, learning how all parts of the stack connect
**Challenges:** You might have to work in areas you’re unfamiliar with (e.g. frontend and backend)

## Functional Teams

Organized by **discipline**, not by product area.

- There’s a “Frontend Team,” a “Backend Team,” a “Data Team,” etc.
- These teams often collaborate with other functions to deliver features
- Leads to deep specialization and shared best practices within disciplines

**Good for:** Mentorship within your skill set, consistent tooling
**Challenges:** Slower delivery—features need coordination across teams

## Platform / Infrastructure Teams

Focus on **building internal tools** and enabling other developers.

- Handle CI/CD, observability, deployment pipelines, shared services
- Rarely user-facing—success is measured by how well they support product teams
- Work with tools like Docker, Kubernetes, AWS, Terraform, etc.

**Good for:** Deep systems knowledge, scaling, automation
**Challenges:** Less visibility, sometimes seen as “support” roles

## Product vs. Platform Split

At medium-to-large companies, teams are often divided into **product** and **platform**:

- **Product teams**: Own features the user directly interacts with
- **Platform teams**: Build shared infrastructure and services used by other teams

This model allows product teams to move fast, while platform teams maintain consistency and scalability.

## Flat vs. Hierarchical

Some teams are **flat**—everyone is an engineer with equal say. Others are **hierarchical**, with senior engineers or tech leads making the final call.

- Flat: more autonomy, more collaboration
- Hierarchical: more clarity, easier delegation

The right balance depends on team size, experience level, and culture.

<!-- ## Team Structur Examples

Here are some examples from my time in the industry:

### Product Team @ RBC

At RBC, I was part of a team focused on an application that allows users to manage their estates. The team included:

- 3 Frontend Developers
- 3 Backend Developers
- 2 Business Analysts
- 2 Designers

With the work we we're doing required a strong understand of economics and finance, meaning we'd often work closely with subject matter experts to ensure we were building

### Platform Team @ Shopify

At Shopify, I worked on a platform team that made it accessible for other teams and third-party developers to build apps on Shopify.

The team included:
- 5 Developers (not specialized, but with a mix of frontend and backend skills)
- 1 Designer (who supported multiple teams)
- 1 Product Manager (who supported multiple teams)

 -->
