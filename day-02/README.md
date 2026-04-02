# Day 02 - Advanced Navigation & File Operations

## Objective

Master the core Linux commands for creating, moving, copying, and deleting files and directories to simulate managing a data pipeline's file structure.

---

## What I Learned

* **Flags:** Modifiers like `-l` (long format) and `-a` (all/hidden) change how commands behave.
* `ls -la`: Reveals hidden files, file sizes, permissions, and timestamps.
* `touch`: Instantly creates empty files (great for mock data/logs).
* `cp`: Copies files. Requires the `-r` flag to copy directories.
* `mv`: Used for both moving files between directories and renaming files.
* `rm`: Permanently deletes files. Requires the `-r` flag to delete directories. There is no recycle bin! 

---

## What I Built / Practiced

* Simulated a data engineering landing zone by creating `raw_data` and `processed_data` directories.
* Generated mock data files using `touch`.
* Routed files through the "pipeline" using `mv` and `cp` while renaming outputs.
* Performed directory cleanup by deleting unnecessary log files using `rm`.- 

---

## Challenges Faced

* [Spelling error!]

---

## Key Takeaways

* In Linux, moving a file and renaming a file are fundamentally the exact same operation (`mv`).
* Data Engineers use `ls -la` constantly to verify file sizes and ensure datasets were generated correctly.

---

## Resources

https://portal.netdevgroup.com/learn/linux-essentials/

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-02$ mkdir raw_data processed_data
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-02$ touch daily_sales.csv error_log.txt
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-02$ ls -la
total 20
drwxr-xr-x  4 dynamic dynamic 4096 Apr  2 15:03 .
drwxr-xr-x 33 dynamic dynamic 4096 Apr  1 11:18 ..
-rw-r--r--  1 dynamic dynamic  297 Apr  1 11:18 README.md
-rw-r--r--  1 dynamic dynamic    0 Apr  2 15:03 daily_sales.csv
-rw-r--r--  1 dynamic dynamic    0 Apr  2 15:03 error_log.txt
drwxr-xr-x  2 dynamic dynamic 4096 Apr  2 15:03 processed_data
drwxr-xr-x  2 dynamic dynamic 4096 Apr  2 15:03 raw_data
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-02$ mv daily_sales.csv raw_data/
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-02$ cp raw_data/daily_sales.csv processed_data/clean_sales.csv
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-02$ rm error_log.txt
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-02$ ls raw_data
daily_sales.csv
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-02$ ls processes_data
ls: cannot access 'processes_data': No such file or directory
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-02$ ls processed_data
clean_sales.csv
