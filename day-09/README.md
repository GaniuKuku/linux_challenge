# Day 09 - Text Wrangling with awk

## Objective

Learn how to parse, filter, and extract specific columns from structured text files (like CSVs) using the `awk` utility.

---

## What I Learned

* `awk`: A powerful text-processing language used primarily for column-based data extraction.
* `$1, $2, $0`: Variables representing the first column, second column, and the entire line, respectively.
* `-F`: The flag used to define the field separator (delimiter). For example, `-F,` sets it to a comma for CSV parsing.
* `NR`: A built-in `awk` variable standing for "Number of Records" (row number), useful for skipping headers (`NR>1`).

---

## What I Built / Practiced

* Created a mock `payroll.csv` file with four distinct columns.
* Used `awk` to isolate and print specific columns, effectively dropping unwanted data.
* Restructured the data by changing the print order of the columns in memory.
* Used logical operators within `awk` (`$3 > 100000`) to filter rows based on numerical column values and extracted the resulting names into a new file.

---

## Challenges Faced

Forgetting -F

---

## Key Takeaways

* While `grep` searches for rows, `awk` is the tool of choice for targeting and manipulating specific columns within a dataset directly from the command line.
- 

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-09$ awk -F, 'NR>1 && $3 > 100000 {print $1}' payroll.csv
Alice
Charlie
