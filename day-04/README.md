# Day 04 - Searching Text with grep

## Objective

Learn how to search, filter, and extract specific text patterns from files using `grep`.

---

## What I Learned

* `grep`: Searches files for specific text patterns and outputs the matching lines.
* `-i` flag: Makes the search case-insensitive.
* `-v` flag: Inverts the search, outputting lines that do *not* match the pattern.
* `-r` flag: Searches recursively through all files in a directory.
* `-c` flag: Counts the number of matching lines instead of printing them.

---

## What I Built / Practiced

* Created a mock `pipeline.log` file simulating data engineering pipeline outputs.
* Used `grep` to extract only the "ERROR" lines from the log.
* Used `grep -c` to count total errors.
* Used `grep -v` to filter out normal "INFO" messages to isolate warnings and errors.

---

## Challenges Faced

forgetting -

---

## Key Takeaways

* `grep` is essential for quickly diagnosing pipeline failures without having to manually read through thousands of lines of log files.

---

## Resources
https://portal.netdevgroup.com/learn/linux-essentials/


---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-04$ grep -v "INFO" pipeline.log
WARNING: Connection slow, retrying...
ERROR: Data format mismatch in row 42
ERROR: Null value found in primary key

