# Day 10 - Stream Editing with sed

## Objective

What was the goal for today?

Learn how to programmatically find and replace text, fix delimiters, and clean dirty data in bulk using the `sed` (Stream Editor) command.

## What I Learned

* `sed 's/old/new/'`: The basic substitution syntax for `sed`.
* `g` flag (Global): Ensures that every instance of the text on a line is replaced, not just the first one.
* `/d` flag (Delete): Removes entire lines that match a specific pattern.
* `-i` flag (In-place): Modifies the source file directly rather than just printing the output to the terminal screen.

---

## What I Built / Practiced

* Generated a `dirty_data.txt` file featuring incorrect delimiters (`|`) and bad string values (`NULL`).
* Used global substitution (`s/|/,/g`) to convert the file format into a standard CSV.
* Used standard substitution to cast `NULL` text into a numeric `0`.
* Chained multiple `sed` commands together using a pipe (`|`) to perform multiple cleaning steps in memory before redirecting (`>`) the final output into a production-ready `clean_data.csv` file.

---

## Challenges Faced

forgeting '  '

---

## Key Takeaways

* `sed` is the ultimate data-scrubbing tool for the CLI. By chaining `sed` with `awk` and `grep`, a Data Engineer can build an entire Extract and Transform (ETL) pipeline without ever opening Python. 

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-10$ sed 's/|/,/g' dirty_data.txt | sed 's/NULL/0/g' > clean_data.csv
dynamic@DESKTOP-OCPA4E2:~/.../day-10$ cat clean_data.csv
id,name,salary
1,Alice,120000
2,Bob,0
3,Charlie,105000
