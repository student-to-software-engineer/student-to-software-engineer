# 5.3.6. Git and Version Control

Version control is one of the most important skills for modern developers — and Git is the standard tool you need to know.

Git is what let's you collaborate with others, track changes to your code, and revert to previous versions if something goes wrong.

## Why It Matters

When you're working solo, Git is your undo button. When you're working on a team, it's the system that makes collaboration possible. Without it, managing code changes would be chaos.

And while Git can seem overwhelming at first (with all its branches, merges, and rebase commands), you only need to learn a few key commands to start using it effectively.

## Basic Git Concepts

- **Repository** – A folder that Git is tracking.
- **Commit** – A snapshot of your code at a certain point in time.
- **Branch** – A parallel version of your codebase you can experiment in.
- **Merge** – Combining changes from one branch into another.
- **Remote** – A copy of your repository hosted elsewhere (like GitHub).

## Common Git Commands

```bash
git init           # Start a new Git repository
git clone <url>    # Download a copy of a remote repository
git status         # See which files have changed
git add .          # Stage all changes
git commit -m "Message"  # Save a snapshot
git push           # Upload your changes to GitHub
git pull           # Download the latest changes from others
git checkout -b feature/new-thing  # Create a new branch
git merge main     # Merge changes from 'main' into your branch
```

## Using GitHub

GitHub is a popular platform for hosting Git repositories. It adds tools for collaboration — like issues, pull requests, and code reviews — on top of Git itself.

Even if you're not contributing to open source (yet), it's worth putting your own projects on GitHub to showcase your work and learn the workflow.

## How to Practice

- Create a simple project and push it to GitHub.
- Try working on it from two different branches and merge your changes.
- Collaborate with a friend and practice resolving merge conflicts.

You don’t need to master every Git feature — just get comfortable using the basics consistently. The rest will come with experience.

## Knowledge Checklist

- [ ] I understand what Git is and why developers use it.
- [ ] I can create and clone a Git repository.
- [ ] I can track changes, commit them, and push to a remote.
- [ ] I understand what branches are and why they’re useful.
- [ ] I can create, switch between, and merge branches.
- [ ] I’ve used GitHub (or another Git hosting service) to share my code.
- [ ] I understand what a pull request is
