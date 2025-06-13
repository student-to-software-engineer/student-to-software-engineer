# 5.5.1. Frontend Frameworks

Once you're comfortable with HTML, CSS, and JavaScript, the next step is learning a frontend framework—and for most students and new developers, **React** is the best place to start.

React is the most widely used frontend library. It lets you break your UI into reusable **components**, manage dynamic behavior, and build interactive interfaces efficiently.

If you know React, picking up other frameworks like **Vue** or **Angular** becomes much easier. The core ideas—components, reactive state, and the separation of logic from presentation—are shared across all of them.

## What You Should Know

To be job-ready, you should know at least the following React concepts:

### Components

React apps are built out of components. Each component is a JavaScript function that returns JSX—an HTML-like syntax React uses to describe what should be rendered to the screen.

```jsx
function Welcome({name} : {name: string}) {
  return <h1>Hello, {name}!</h1>;
}

<Welcome name="John" />  // Renders: <h1>Hello, John!</h1>
```

Think of components as a way of creating your own **custom HTML tags**.

### useState

This hook lets your component store and update data that changes over time—like user input, UI toggles, or fetched data.

State works the same way as state does in object-oriented programming: it holds the current values of variables that can change.

When state changes, React re-draws the component to reflect those changes.

```jsx
import { useState } from "react";

function Counter() {
  const [count, setCount] = useState(0);
  return (
    <button onClick={() => setCount(count + 1)}>
      You clicked {count} times
    </button>
  );
}
```

### useEffect

This hook is used for two main purposes:

- Calling code after the component mounts or unmounts (ex: fetch data when the component loads)
- Running code in response to changes in state or props (ex: updating the document title when a component updates)

The name "effect" refers to the idea of a "side effect".

```jsx
import { useEffect } from "react";

useEffect(() => {
  document.title = "New Page Title";
}, []); // Runs once when the component mounts
```

### useContext

`useContext` lets you share data (like a theme or user session) across your entire app without passing props through every component.

```jsx
const ThemeContext = React.createContext("light");

function App() {
  return (
    <ThemeContext.Provider value="dark">
      <Toolbar />
    </ThemeContext.Provider>
  );
}

function Toolbar() {
  const theme = useContext(ThemeContext);
  return <div>Current theme: {theme}</div>;
}
```

## Where To Start

- [React Docs](https://react.dev/learn) (official documentation with beginner-friendly guides)
- [W3Schools React Tutorial](https://www.w3schools.com/react/)
- [freeCodeCamp React Course](https://www.freecodecamp.org/learn/front-end-development-libraries/react/)

If you're just starting out, try building small projects like a to-do list, a weather app, or a quiz game. Once you're comfortable building with React, picking up frameworks like Vue or Angular will be mostly about learning new syntax—the underlying ideas stay the same.

## Knowledge Checklist

- [ ] I understand what a component is and how to write one.
- [ ] I can manage state using `useState`.
- [ ] I can perform side effects using `useEffect`.
- [ ] I understand how to use `useContext` to share global data.
- [ ] I can build a basic single-page application using React.
- [ ] I understand the concept of props and component composition.
- [ ] I’ve built at least one small React project on my own.
