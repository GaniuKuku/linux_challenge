# Day 20 - Fail-Safe Pipelines (Strict Mode)

## Objective

Implement the "Unofficial Bash Strict Mode" to ensure data pipelines fail fast and safely when encountering errors or undefined variables.

---

## What I Learned

* **Bash Default Behavior:** By default, Bash continues executing subsequent lines of code even if a previous command fails, which can cause catastrophic data loss in automated pipelines.
* `set -e`: Instructs the script to exit immediately if any command returns a non-zero exit status.
* `set -u`: Instructs the script to exit immediately if it attempts to use an unbound (undefined) variable, protecting against dangerous typos.
* `set -o pipefail`: Ensures that if any command within a pipeline chain (e.g., `cmd1 | cmd2`) fails, the entire chain returns a failure code.
* **The Standard:** `set -euo pipefail` is a mandatory best practice for all production-grade Data Engineering bash scripts.

---

## What I Built / Practiced

* Authored `reckless.sh` to observe the default, dangerous behavior of Bash when encountering a misspelled variable (resulting in premature data deletion).
* Authored `strict_pipeline.sh`, injecting `set -euo pipefail` at the top of the script.
* Re-ran the logic with the intentional typo and verified that the script aborted execution instantly at the point of failure, successfully protecting the mock source data from the downstream `rm` command.

---

## Challenges Faced

- 
- 

---

## Key Takeaways

* A successful pipeline isn't just one that processes data; it is one that knows exactly when to stop. "Failing fast" is a core principle of Production Grade data engineering, ensuring bad data or broken states never cascade into the Medallion architecture.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-20$ ./strict_pipeline.sh
Step 1: Starting data load...
./strict_pipeline.sh: line 9: DESTINATON: unbound variable
