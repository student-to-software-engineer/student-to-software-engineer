# 5.2.1. HTML, CSS, and JavaScript

HTML, CSS, and JavaScript are the foundational technologies of the web. You need to know them to build anything that runs in a browser.

HTML defines the structure of your web pages, CSS styles them, and JavaScript adds interactivity. You don't need to be an expert in all three, but you should be comfortable using them to create simple web pages.

## Where To Start

To learn HTML, CSS, and JavaScript, check out tutorials and documentation on [W3Schools](https://www.w3schools.com/) and [MDN Web Docs](https://developer.mozilla.org/).

To get started open a text editor and create a new file called `index.html`. Add the following code:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>My First Web Page</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        color: #333;
      }
      h1 {
        color: #007bff;
      }
    </style>
  </head>
  <body>
    <h1>Hello, World!</h1>
    <p>This is my first web page.</p>
    <script>
      console.log("Hello, World!");
    </script>
  </body>
</html>
```

This is a simple HTML document that includes some basic CSS for styling and a JavaScript snippet that logs "Hello, World!" to the console.

Open this file in a web browser to see your first web page in action. You can edit the HTML, CSS, and JavaScript directly in the file and refresh the page to see your changes.

## Why The Web?

A lot of software systems need user interfaces, and the web is not the only way to build one, but it is the most accessible and widely used.

By learning HTML, CSS, and JavaScript, you can create applications that run in any modern web browser, meaning your user interface can be accessed from any device with internet access. This is a huge advantage over other platforms that may require specific operating systems or installations.

## Knowledge Checklist

### HTML

- [ ] I understand the structure of an HTML document, including the `<!DOCTYPE html>`, `<html>`, `<head>`, and `<body>` tags.
- [ ] I can use common HTML elements like `<h1>`, `<p>`, `<a>`, and `<div>` to structure content.
- [ ] I can create lists using `<ul>`, `<ol>`, and `<li>` elements.
- [ ] I understand that semantic HTML elements improve accessibility and SEO.

### CSS

- [ ] I understand how to link a CSS file to an HTML document using the `<link>` tag.
- [ ] I can use CSS selectors to target elements via id or class attributes to apply styles.
- [ ] I can use properties like `color`, `background-color`, `font-size` to style elements.
- [ ] I understand the box model and how `padding`, borders, and `margins` affect element layout.
- [ ] I understand when to use different CSS units like `px`, `%`, `em`, and `rem`.
- [ ] I can create responsive designs using media queries.
- [ ] I can use CSS Flexbox or CSS Grid to create responsive layouts.

### JavaScript

- [ ] I understand how to include JavaScript in an HTML document using the `<script>` tag.
- [ ] I can use `console.log()` to output messages to the browser console.
- [ ] I can manipulate the DOM using methods like `document.getElementById()`, `document.querySelector()`, and `element.innerHTML`.
- [ ] I can handle events like clicks and form submissions using event listeners.
- [ ] I can create simple functions and understand variable scope.
- [ ] I can use JavaScript to validate form inputs and provide user feedback.
