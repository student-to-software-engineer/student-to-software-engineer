# 5.5.12. Code Review Etiquette

Doing code reviews is a critical part of the software development process. It’s not just about finding bugs—it’s about improving code quality, sharing knowledge, and building a better product together.

One of the best resources to learn how to give (and receive) better feedback is [**Conventional Comments** by Paul Slaughter](https://conventionalcomments.org/). It outlines a set of simple, structured guidelines for making your review comments easier to understand, act on, and appreciate.

## Common Pitfalls in Code Reviews

Here are a few common problems that Conventional Comments aims to solve:

- **Lack of Clarity**: Vague or ambiguous comments can lead to confusion.
- **No Clear Action**: Highlighting an issue without offering a path forward can be frustrating.
- **Unclear Expectations**: It’s often hard to tell whether a comment is a casual suggestion or a required change.

By using **labels and decorations**, Conventional Comments encourages comments that are explicit, respectful, and easy to respond to.

## Before and After: Comment Examples

Here’s how a vague comment becomes more helpful with Conventional Comments:

**❌ Unclear Comment:**

```text
This is not worded correctly.
```

**✅ Improved Comment with Labels:**

```text
suggestion: This is not worded correctly.

Can we change this to match the wording used on the marketing page?
```

**✅ With More Context:**

```text
issue (non-blocking): This is not worded correctly.

Can we align this with the voice and tone used on the homepage? This helps keep our language consistent across the product.
```

Labels make your **intent** clear. They also encourage better discussions and reduce misunderstandings.

## Examples of Labeled Comments

```text
suggestion: Let’s avoid using this specific function…

If we reference too much of a function marked “Deprecated”, it’s likely to break or conflict with newer code soon.
```

```text
issue (ux, non-blocking): These buttons should be red, but let’s handle this in a follow-up task.
```

```text
question (non-blocking): At this point, does it matter which thread has won?

Maybe we should keep looping until all threads have finished?
```

```text
praise: Great use of the caching pattern here. This will definitely speed up the response time!
```

```text
chore: Don’t forget to run the CI pipeline before merging.

You can use `yarn ci:run` or just push an empty commit to trigger it.
```

## Standard Labels

| Label         | Purpose                                                        |
| ------------- | -------------------------------------------------------------- |
| `praise:`     | Highlight something done well                                  |
| `nitpick:`    | Trivial, non-blocking preferences (e.g., formatting, naming)   |
| `suggestion:` | Propose an improvement, ideally with reasoning or example      |
| `issue:`      | Highlight something that is incorrect or could cause bugs      |
| `todo:`       | Small, necessary changes that still need to be made            |
| `question:`   | Ask for clarification or express uncertainty                   |
| `thought:`    | Share a non-blocking idea or insight                           |
| `chore:`      | Required process-related steps (e.g. CI, documentation)        |
| `note:`       | Non-blocking context or callouts the author should be aware of |

## Optional Decorations

Decorations help clarify the **importance** or **context** of a comment.

| Decoration       | Meaning                                           |
| ---------------- | ------------------------------------------------- |
| `(non-blocking)` | This does **not** need to be fixed before merging |
| `(blocking)`     | This **must** be addressed before merging         |
| `(security)`     | The comment relates to a security concern         |
| `(test)`         | The comment concerns test coverage or behavior    |
| `(ux)`           | The comment affects user experience               |
| `(if-minor)`     | The fix is optional unless it’s trivial to apply  |
