# Day 19 - Functions and Code Reusability

## Objective

Learn how to apply the DRY (Don't Repeat Yourself) principle in Bash scripting by creating and invoking custom functions.

---

## What I Learned

* **Function Syntax:** How to define a block of reusable code using `function_name() { ... }`.
* **Function Invocation:** Calling a custom function in Bash acts exactly like calling a native Linux command (no parentheses required).
* **Positional Parameters:** Utilizing variables like `$1` and `$2` inside a function to accept dynamic arguments passed during the function call.
* **Variable Scope (`local`):** Using the `local` keyword inside a function to ensure a variable (like the timestamp) doesn't accidentally overwrite system variables elsewhere in the script.

---

## What I Built / Practiced

* Authored `modular_pipeline.sh` utilizing a centralized `log_message` function.
* Passed custom string arguments to the function to generate standardized, timestamped log outputs.
* Simulated a multi-step pipeline using `sleep` to verify the timestamp updated dynamically with every function call.

---

## Challenges Faced

- 
- 

---

## Key Takeaways

* Functions make Data Engineering scripts readable, maintainable, and scalable. If the logging format needs to change (e.g., adding a server name), it only has to be updated in one single place rather than on 50 different `echo` lines.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-19$ ./modular_pipeline.sh
[2026-04-19 18:40:12] INFO: Pipeline execution started.
[2026-04-19 18:40:14] INFO: Connecting to database...
[2026-04-19 18:40:16] INFO: Extracting 50,000 rows...
[2026-04-19 18:40:18] INFO: Pipeline execution completed successfully.
