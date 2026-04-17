# Day 16 - Conditionals and Control Flow

## Objective

Learn how to build decision-making logic into Bash scripts using if/else statements and file condition checks.

---

## What I Learned

* **The `if` Statement:** The core structure for conditional execution in Bash (`if`, `then`, `else`, `fi`).
* **Syntax Strictness:** Bash requires explicit spaces inside the condition brackets (e.g., `[ -f file.txt ]`).
* **File Operators:** Using `-f` to evaluate if a file exists and `-d` to evaluate if a directory exists before attempting to interact with them.

---

## What I Built / Practiced

* Wrote `smart_pipeline.sh`, a bash script that checks for the existence of a required data file before executing its core logic.
* Successfully tested the "Happy Path" by running the script while the target file existed.
* Simulated a pipeline failure by removing the source data (`rm daily_sales.csv`) and verifying that the script's `else` block caught the error and exited gracefully without triggering system crashes.

---

## Challenges Faced

none

---

## Key Takeaways

* Hardcoded scripts are dangerous. Data Engineering pipelines must be defensive, actively checking that the environment matches expectations (like verifying a file exists) before executing resource-heavy transformations.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-16$ ./smart_pipeline.sh
Checking for new data...
SUCCESS: daily_sales.csv found.
Starting data transformation...
Pipeline complete!

dynamic@DESKTOP-OCPA4E2:~/.../day-16$ rm daily_sales.csv
dynamic@DESKTOP-OCPA4E2:~/.../day-16$ ./smart_pipeline.sh
Checking for new data...
ERROR: CRITICAL FAILURE.
daily_sales.csv is missing. Pipeline halted.
