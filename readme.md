### SQL

### Query Classification

![alt text](image.png)

### Aggregate Functions

AVG,COUNT,MIN,MAX,SUM,...

### '' or ""

'' => for strings
"" => for table/column names

### Order of Operations

1. FROM clause (including any JOIN operations)
2. WHERE clause
3. GROUP BY clause (if present)
4. HAVING clause (if present)
5. SELECT clause
6. ORDER BY clause
7. LIMIT clause (if present)

### Types of Indexes

1. Single column
2. Multi column
3. Unique
4. Partial
5. Implicit indexes

### When to use Index

1. Index foreign keys
2. Index primary keys and unique columns
3. Index on columns that end up in the ORDER BY/WHERE clause

### When not to use Index

1. Don't add an index just to add one
2. Don't use on small tables
3. Don't use on tables that are update frequently
4. Don't use on columns that can contain NULL values
5. Don't use on columns that have large values

### Postgres Indexing Algorithms

1. B-Tree : default indexing algorithm in Postgres. Best for comparisons with <,<=,=,>=,>, BETWEEN, IN, IS NULL, IS NOT NULL
2. Hash : best for equality check
3. Gin : best used when multiple values are stored in a single field
4. Gist : useful for indexing geometric data and full text search

### Database

https://medium.com/yavar/postgres-default-databases-98092224e642

### Schema

https://www.postgresqltutorial.com/postgresql-administration/postgresql-schema/

### Roles

https://www.postgresqltutorial.com/postgresql-administration/postgresql-roles/

use --interactive flag for ease

### Column constraints

1. NOT NULL
2. PRIMARY KEY
3. UNIQUE
4. CHECK
5. REFERENCES
