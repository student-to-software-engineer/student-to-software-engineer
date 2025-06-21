# 5.5.6. The Test Pyramid

Writing code is only half the job — the other half is making sure it works. Automated testing is one of the most important practices in software development, and it’s something every professional developer is expected to understand. It’s how we prevent bugs, safely refactor code, and confidently ship features.

Without tests, even small changes can feel risky. With tests, your codebase becomes a lot more stable and maintainable over time.

## Why Testing Matters

When you build software, you’re making assumptions: about inputs, edge cases, user behavior, and how different parts of your code interact. Automated tests are a way to document and verify those assumptions. They help you catch bugs early, avoid regressions, and make changes without fear of breaking things.

For internships or junior roles, being able to write and understand tests—even basic ones—can set you apart. It shows maturity, professionalism, and care for your work.

## Types of Automated Tests

There are three main types of tests you’ll see in most codebases. They vary in speed, complexity, and what they test.

### 1. Unit Tests

**Unit tests** check small, isolated pieces of code—usually a single function or method. They don’t touch the database, make network calls, or interact with other parts of the system.

They’re fast, easy to write, and should make up the majority of your test suite.

```js
// JavaScript example
function add(a, b) {
  return a + b;
}

test("adds two numbers", () => {
  expect(add(2, 3)).toBe(5);
});
```

### 2. Integration Tests

**Integration tests** check how different parts of your application work together. For example, if your backend fetches data from a database and returns it to an API client, an integration test would check that the whole flow works.

They’re slower than unit tests but still pretty reliable, and they help catch issues that unit tests can’t.

### 3. End-to-End (E2E) Tests

**E2E tests** simulate how a user would interact with your app. They open a browser, click buttons, fill forms, and verify that the app behaves correctly.

These tests are the slowest and most expensive to write and maintain. Use them sparingly to test critical user flows like login, signup, or checkout.

## The Test Pyramid

A common way to think about test strategy is the **Test Pyramid**:

The idea is to write lots of unit tests, a moderate number of integration tests, and only a small number of end-to-end tests. This gives you fast feedback and good test coverage without making your test suite painful to run.

## Where To Start

1. Pick a testing framework based on your language or stack:

   - JavaScript/TypeScript: [Jest](https://jestjs.io/), [Vitest](https://vitest.dev/)
   - Python: [PyTest](https://docs.pytest.org/en/stable/)
   - Java: [JUnit](https://junit.org/junit5/)
   - Ruby: [RSpec](https://rspec.info/)

2. Start writing **unit tests** for pure functions in your project.
3. Add **integration tests** for things like API routes or database access.
4. Consider adding one or two **E2E tests** for the most important user flows using tools like [Cypress](https://www.cypress.io/) or [Playwright](https://playwright.dev/).

## Knowledge Checklist

- [ ] I understand the importance of automated testing in software development.
- [ ] I understand the difference between unit tests, integration tests, and end-to-end tests.
- [ ] I can set up a testing framework for my language or stack.
- [ ] I can write basic unit tests for functions or methods in my code.
- [ ] I can write integration tests that check how different parts of my application work together.
- [ ] I have written at least one end-to-end test for critical user flows in my application.
- [ ] I understand the concept of the test pyramid and how to apply it to my testing strategy.
