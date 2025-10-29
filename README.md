# TODO List REST API

Simple REST API built with PHP and MySQL for task management.

## Features

- ✅ Create tasks
- ✅ Read all tasks
- ✅ Update tasks
- ✅ Delete tasks
- ✅ JSON responses
- ✅ CORS enabled
- ✅ PDO with prepared statements (SQL injection protection)

## Tech Stack

- PHP 7.4+
- MySQL 5.7+
- REST architecture

## Installation

1. **Clone repository**

```bash
git clone https://github.com/YOUR_USERNAME/todo-api.git
cd todo-api
```

2. **Setup database**

```bash
mysql -u root -p < database.sql
```

3. **Configure database connection**

Edit `config/database.php` with your credentials:

```php
private $host = "localhost";
private $db_name = "todo_api";
private $username = "your_username";
private $password = "your_password";
```

4. **Start local server**

```bash
php -S localhost:8000
```

## API Endpoints

### GET /api/read.php

Get all tasks

**Response:**

```json
{
  "records": [
    {
      "id": 1,
      "title": "Task title",
      "description": "Task description",
      "completed": false,
      "created_at": "2024-10-29 23:00:00",
      "updated_at": "2024-10-29 23:00:00"
    }
  ]
}
```

### POST /api/create.php

Create new task

**Request:**

```json
{
  "title": "New task",
  "description": "Task description",
  "completed": false
}
```

### PUT /api/update.php

Update existing task

**Request:**

```json
{
  "id": 1,
  "title": "Updated task",
  "description": "Updated description",
  "completed": true
}
```

### DELETE /api/delete.php

Delete task

**Request:**

```json
{
  "id": 1
}
```

## Testing with curl

**Get all tasks:**

```bash
curl http://localhost:8000/api/read.php
```

**Create task:**

```bash
curl -X POST http://localhost:8000/api/create.php \
  -H "Content-Type: application/json" \
  -d '{"title":"Test task","description":"Testing API","completed":false}'
```

**Update task:**

```bash
curl -X PUT http://localhost:8000/api/update.php \
  -H "Content-Type: application/json" \
  -d '{"id":1,"title":"Updated task","completed":true}'
```

**Delete task:**

```bash
curl -X DELETE http://localhost:8000/api/delete.php \
  -H "Content-Type: application/json" \
  -d '{"id":1}'
```

## Security Features

- Prepared statements (SQL injection protection)
- Input sanitization with `htmlspecialchars()`
- CORS headers configured
- Error handling

## License

MIT

## Author

Denys Chorny Savchuk
