# 5.2.2. Webservers and RESTful APIs

Websites that display vast amounts of data — like those with trillions of records — don’t store all that data in your browser or inside HTML files. Instead, they retrieve it on demand by making requests over the internet to **web servers**.

A **web server** is a program that listens for requests from clients (like your web browser) and responds with the requested data.

**Servers** are called _servers_ because they _serve_ responses back to clients.

These requests — called **HTTP requests** — are how clients ask servers for information or request that they perform certain actions.

**HTTP** (Hypertext Transfer Protocol) is the standard that defines how this communication happens across the web.

**REST** (Representational State Transfer) is a popular standard for structuring how web servers and clients communicate. A **RESTful API** (Application Programming Interface) provides a predictable and consistent way for clients (like browsers or apps) to interact with a server.

An HTTP request to a RESTful API typically includes:

- **HTTP Method**: The action to perform (e.g., GET, POST (create), PUT (update), DELETE).
- **Endpoint**: The URL path that identifies the resource (e.g., `/users`).
- **Headers**: Metadata about the request (e.g., content type, authentication).
- **Request Body**: Data sent with the request (for POST/PUT requests).

## Where To Start

Try building a simple RESTful API using Node.js and Express or Python with Flask or FastAPI. These frameworks make it easy to set up a web server and define RESTful endpoints.

To test your API, you can use tools like Postman or cURL to send requests and see the responses.

## Knowledge Checklist

- [ ] I understand what a web server is and how it serves requests.
- [ ] I understand what HTTP is and how it works.
- [ ] I understand what REST is and how it standardizes web communication.
- [ ] I can create a simple RESTful API with (express.js, Flask, or Fast API) with endpoints to perform CRUD operations (Create, Read, Update, Delete) on resource like users or products.

<!-- ## Example Users REST API

Think of each endpoint as “just another function” you can call to perform an action. The only difference is that these functions are accessed over the internet and run on a web server instead of your local machine.

### `GET /users/{id}`

**Description:** Retrieve a specific user by ID
**Request Body:** _None_
**Response Example:**

```json
{
  "id": 123,
  "name": "Alice",
  "email": "alice@example.com"
}
```

**Server Code:**

```js
app.get("/users/:id", (req, res) => {
  const userId = req.params.id;
  const user = UserService.getUserById(userId);

  if (!user) {
    res.status(404).json({ message: "User not found" });
  } else {
    res.json(user);
  }
});
```

### `POST /users`

**Description:** Create a new user
**Request Example:**

```json
{
  "name": "Charlie",
  "email": "charlie@example.com"
}
```

**Response Example:**

```json
{
  "id": 125,
  "name": "Charlie",
  "email": "charlie@example.com"
}
```

**Server Code:**

```js
app.post("/users", (req, res) => {
  const { name, email } = req.body;

  const newUser = UserService.createUser({ name, email });

  res.status(201).json(newUser);
});
``` -->
