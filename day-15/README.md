# Day 15 - Introduction to Bash Scripting

## Objective

Transition from executing individual command line operations to writing automated, reproducible Bash scripts using variables and command substitution.

---

## What I Learned

* **The Shebang (`#!/bin/bash`):** The mandatory first line of a script that specifies which interpreter the operating system should use.
* **Variable Declaration:** Assigning values without spaces (e.g., `VAR="value"`).
* **Command Substitution (`$()`):** Executing a shell command and storing its output directly into a variable for later use.
* **The `date` Command:** Useful for generating dynamic timestamps for file versioning.

---

## What I Built / Practiced

* Created an `auto_backup.sh` script to automate the archiving process learned in Phase 2.
* Utilized command substitution to capture the current date and dynamically inject it into the final backup file name.
* Executed a `tar` compression job programmatically using variable references instead of hardcoded paths.
* Granted execute permissions using `chmod +x` and ran the script.

---

## Challenges Faced

none

---

## Key Takeaways

* Bash scripts are the glue of Data Engineering. They allow us to combine data extraction, text processing, and file management into a single executable pipeline that can be scheduled to run completely hands off.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-15$ ./auto_backup.sh
Starting automated backup pipeline...
Compressing ../day-13/ into log_backup_2026_04_16.tar.gz
Backup pipeline completed successfully!
