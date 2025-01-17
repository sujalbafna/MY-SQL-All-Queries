# MY-SQL All Queries 💻🔑

This repository is a comprehensive collection of essential SQL queries for database management. It covers a wide range of topics, including data retrieval, updates, joins, aggregations, and much more. Whether you're a beginner or an experienced developer, this is your go-to resource for mastering MySQL query syntax and optimization techniques.

## Prerequisites 📋

Before using these queries, make sure you have the following:

- MySQL installed on your system 🖥️
- Basic understanding of databases and SQL queries 📚

## Installation ⚙️

1. Clone this repository:

   ```bash
   git clone https://github.com/sujalbafna/MY-SQL-All-Queries.git
   ```

2. Navigate to the project directory:

   ```bash
   cd MY-SQL-All-Queries
   ```

3. You can use any MySQL client or terminal to execute the queries stored in the repository.

## Usage 🚀

This repository is organized by types of SQL queries to make it easy to find what you're looking for:

### 1. Data Retrieval Queries 📄

These queries help in retrieving data from your database:

- **SELECT** – Basic query to retrieve all or specific columns.
- **WHERE** – Filter data with specific conditions.
- **ORDER BY** – Sort the data in ascending or descending order.
  
Example:

```sql
SELECT * FROM employees WHERE salary > 50000 ORDER BY name ASC;
```

### 2. Data Modification Queries 🔄

Queries for inserting, updating, and deleting records:

- **INSERT** – Add new records to a table.
- **UPDATE** – Modify existing records.
- **DELETE** – Remove records from a table.

Example:

```sql
UPDATE employees SET salary = 60000 WHERE name = 'John Doe';
```

### 3. Joins 🔗

These queries help you combine data from multiple tables:

- **INNER JOIN** – Combine rows from two tables where there is a match.
- **LEFT JOIN** – Include all rows from the left table, even if there’s no match in the right table.
- **RIGHT JOIN** – Include all rows from the right table, even if there’s no match in the left table.
- **FULL JOIN** – Include rows when there is a match in one of the tables.

Example:

```sql
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;
```

### 4. Aggregation Queries 📊

Queries for summarizing and analyzing data:

- **COUNT** – Count the number of rows.
- **AVG** – Calculate the average value.
- **SUM** – Calculate the sum of values.
- **GROUP BY** – Group data by a particular column.

Example:

```sql
SELECT department_id, COUNT(*) FROM employees GROUP BY department_id;
```

### 5. Optimization Techniques ⚡

Includes advanced queries and optimization strategies such as:

- Indexing
- Query Execution Plan Analysis
- Using `EXPLAIN` for optimization

## Example Query 💡

Here’s an example of a more complex query using joins and aggregations:

```sql
SELECT employees.name, departments.department_name, AVG(salary) as avg_salary
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id
GROUP BY departments.department_name;
```

## Folder Structure 📂

- `queries/` – Contains categorized SQL queries (e.g., `retrieval`, `joins`, `aggregation`, etc.).
- `README.md` – Overview of the repository and query usage.
- `optimization/` – Contains tips and techniques for query optimization.

## License 📝

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments 🙏

- MySQL documentation for the query syntax and optimization techniques.

---
