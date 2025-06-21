# 5.1.5. Dependencies

When you write code, you don’t want to reinvent the wheel every time. Need to send an HTTP request? There’s a library for that. Want to hash a password? Someone’s already written (and tested) a secure version.

These reusable chunks of code are called **dependencies** — libraries or packages that your project relies on to function.

Using dependencies allows you to build faster, write cleaner code, and stand on the shoulders of the global developer community.

## What Are Dependencies?

A dependency is any external package your code needs to run. For example:

- A math library to help with complex calculations
- A web framework that handles routing and requests
- A database client that connects to your data

Most languages have tools to help you install, manage, and update these packages. These are called **package managers**.

## Common Package Managers

- **Python** – [`pip`](https://pypi.org/)
- **JavaScript** – [`npm`](https://www.npmjs.com/) or [`yarn`](https://yarnpkg.com/)
- **Ruby** – `gem`
- **Java** – `Maven` or `Gradle`
- **Rust** – `cargo`
- **Go** – `go mod`
- **C#** – `NuGet`

No matter the language, the concept is the same: you declare the packages you need, and the package manager installs them for you.

## Example: Using a Dependency in Python

Let’s say you want to make an HTTP request in Python. Instead of manually opening sockets, you can use a dependency called `requests`.

```bash
pip install requests
```

Now in your code:

```python
import requests

response = requests.get("https://api.github.com")
print(response.status_code)
print(response.json())
```

It’s that simple. You’re now using a dependency maintained by thousands of developers.

## Keeping Track of Dependencies

When your project depends on external packages, it’s important to record _exactly_ which ones. Most ecosystems use a file to track this:

- `requirements.txt` (Python)
- `package.json` (JavaScript)
- `Gemfile` (Ruby)
- `Cargo.toml` (Rust)

This lets others install all the necessary packages just by running a single command (like `pip install -r requirements.txt`).

## Knowledge Checklist

- [ ] I understand what dependencies are and why they’re useful.
- [ ] I know how to install and use a package in at least one language (e.g., `pip`, `npm`).
- [ ] I’ve used a dependency in a personal project.
- [ ] I understand how dependencies are tracked (e.g., `requirements.txt`, `package.json`).
- [ ] I can read and follow documentation for a third-party package.
- [ ] I know how to update or remove dependencies when needed.
