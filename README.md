# Database Project Overview

## Description

This project involves the creation and management of a relational database designed to store and handle information about people, their skills, and roles. The database is structured to facilitate the tracking of skill acquisition and role assignments for individuals. This setup is particularly useful for organizations looking to manage employee skills and roles effectively.

## Contents

- `hw7-ddl.sql`: The SQL script for defining the database schema. This script includes table creation for `people`, `skills`, `roles`, `peopleskills`, and `peopleroles`. It also populates the tables with sample data.

- `hw7.qmd`: Explains in depth about the datbase structure and also the data inside the tables and a few custom queries that can be used with the database. These queries are designed to fetch and display data from the database, such as listing people with specific skills or roles, and showing unused skills and roles.

- `README.md`: This file, providing an overview of the project and its components.

## How to Use

1. **Database Setup**: Run the `hw7-ddl.sql` in your SQL database server to set up the schema and initial data.
   
2. **Running Queries**: Use `hw7.qmd` to execute SQL queries. Ensure you have a Python environment with necessary libraries and a connection to the database. Use poetry to install the libraries

3. **Modifications**: You can modify the SQL scripts and Python files as per your requirements to adapt to your specific data and queries.

## Additional Information

- Ensure that your database connection details in the Python scripts are correct for your environment.
- You may need to install additional Python libraries depending on your database sqlalchemy to connect to the database.
- The provided data in `hw7-ddl.sql` is for demonstration purposes.
