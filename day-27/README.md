# Day 27 - CLI Data Profiling with sort and uniq

## Objective

Learn how to perform rapid data profiling, deduplication, and frequency counting directly in the terminal without using SQL or Python.

---

## What I Learned

* `sort`: Orders data sequentially. Critical flags include `-n` (numeric sort) and `-r` (reverse/descending order).
* `uniq`: Removes duplicate rows from a dataset.
* **The Golden Rule:** `uniq` only detects consecutive duplicates. A dataset must always be passed through `sort` before `uniq` can accurately deduplicate it.
* `uniq -c`: The count flag. Aggregates identical consecutive lines and prefixes the output with the total occurrence count.
* **Pipeline Chaining:** Combining `sort | uniq -c | sort -nr` creates a powerful CLI equivalent to a SQL `SELECT column, COUNT(*) GROUP BY column ORDER BY count DESC` query.

---

## What I Built / Practiced

* Generated a mock `access.log` file containing unsorted, duplicated IP addresses.
* Observed the failure of `uniq` when applied to unsorted data.
* Piped the log file through `sort | uniq` to extract a clean, distinct list of IP addresses.
* Utilized `uniq -c` to aggregate the traffic logs.
* Chained a final `sort -nr` to rank the IP addresses by request volume, successfully identifying the top source of network traffic.

---

## Challenges Faced

- 
- 

---

## Key Takeaways

* Data Engineers often need to answer quick questions about raw data (e.g., "Are there duplicate IDs?", "What are the top 5 error codes?"). The `sort` and `uniq` combo provides instant answers directly from the landing zone, bypassing the need to spin up heavy analytical tools.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-27$ sort access.log | uniq -c | sort -nr
      4 10.0.0.5
      3 192.168.1.15
      2 172.16.0.8
