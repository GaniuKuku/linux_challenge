# Day 25 - CLI Database Operations (SQLite)

## Objective

Learn how to interact with relational databases and execute SQL commands directly from the Linux command line without manual GUI interactions.

---

## What I Learned

* `sqlite3`: A lightweight, file-based relational database engine operable entirely via the CLI.
* **Headless SQL Execution:** Passing SQL strings directly to the database engine via Bash (e.g., `sqlite3 db_name "SQL QUERY"`), allowing database interactions to be embedded in automated shell scripts.
* **CLI Built-in Commands:** Using `.mode csv` and `.import` to seamlessly ingest raw text files directly into SQL tables without writing heavy Python ETL scripts.
* **Formatting Flags:** Using `-cmd ".mode column"` and `-cmd ".headers on"` to format database outputs into human-readable tables in the terminal.

---

## What I Built / Practiced

* Installed the `sqlite3` package via the `apt` package manager.
* Created a mock `gold_employees.csv` dataset.
* Built a single-line command to initialize an `analytics_warehouse.db` database and automatically ingest the CSV into an `employees` table.
* Executed standard `SELECT` statements with `WHERE` clauses directly from the Bash prompt.

---

## Challenges Faced



---

## Key Takeaways

* A Data Engineer should not be reliant on desktop GUI tools like DBeaver or pgAdmin to check database states. Being able to query data and load files via CLI is crucial for debugging remote servers and building lightweight automated pipelines. 

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-25$ sqlite3 analytics_warehouse.db -cmd ".mode column" -cmd ".headers on" "SELECT name, role FROM employees WHERE salary > 115000;"
name     role              
-------  ------------------
Alice    Data Engineer     
Charlie  Data Scientist
