# 5.5.9. Common Security Vulnerabilities

As a developer, it's your responsibility to not just build software that works—but software that’s safe. Even small mistakes in your code can lead to major security risks if you’re not careful.

You don’t need to be a security expert to write secure code. But you **do** need to understand the most common vulnerabilities, how they happen, and how to avoid them.

## 1. SQL Injection

**What it is:**
An attacker tricks your app into running malicious SQL by inserting it into a form or URL.

**Example:**

```sql
-- BAD: vulnerable to SQL injection
"SELECT * FROM users WHERE username = '#{params[:username]}'"
```

**How to prevent it:**
Use parameterized queries or an ORM that handles escaping for you.

## 2. Cross-Site Scripting (XSS)

**What it is:**
An attacker injects malicious JavaScript into your site, which then runs in other users' browsers.

**Example:**

```html
<!-- BAD: directly rendering user input -->
<div>Welcome, {{ user.name }}</div>
```

**How to prevent it:**
Always sanitize or escape user input before rendering it into HTML.

## 3. Cross-Site Request Forgery (CSRF)

**What it is:**
An attacker tricks a logged-in user into making an unwanted request to your app (like changing their email or password).

**How to prevent it:**
Use CSRF tokens for forms and verify them on the server. Most frameworks handle this for you by default.

## 4. Insecure Authentication

**What it is:**
Poorly implemented login systems—like storing plain-text passwords or not rate-limiting login attempts.

**How to prevent it:**

- Always hash passwords using a strong algorithm (e.g., bcrypt or Argon2)
- Use multi-factor authentication (MFA) where possible
- Rate-limit login attempts to prevent brute-force attacks

## 5. Sensitive Data Exposure

**What it is:**
Leaking things like passwords, credit card numbers, or API keys by mistake.

**Common mistakes:**

- Logging sensitive info to the console
- Committing `.env` files or secrets to Git
- Not using HTTPS

**How to prevent it:**

- Never hardcode secrets
- Use environment variables
- Audit your code and configs regularly

## 6. Broken Access Control

**What it is:**
Users being able to access or modify things they shouldn’t—like editing someone else’s account.

**How to prevent it:**

- Always check if the current user has permission before allowing access
- Don’t rely on the frontend to protect sensitive actions—**validate everything on the server**

## How To Get Staryed

- Use libraries and frameworks that help protect against these risks
- Read the [OWASP Top 10](https://owasp.org/www-project-top-ten/) for a deeper understanding
- Never assume user input is safe
- Code defensively—think like an attacker

### Knowledge Checklist

- [ ] I understand what SQL injection is and how to avoid it
- [ ] I know what XSS is and how to prevent it
- [ ] I understand how CSRF attacks work
- [ ] I use proper password hashing and authentication strategies
- [ ] I avoid logging or exposing sensitive data
- [ ] I verify that users only have access to what they should
