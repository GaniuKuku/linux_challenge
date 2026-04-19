# Day 18 - Task Scheduling with Cron

## Objective

Transition from manual script execution to fully automated, time-based job scheduling using the Linux `cron` daemon.

---

## What I Learned

* **Cron Daemon:** A background service that reads the `crontab` file and executes commands at specified intervals.
* **Crontab Syntax:** The 5-asterisk time formatting system (`Minute Hour Day Month DayOfWeek`).
* **Absolute Paths:** The critical requirement that cron jobs must use absolute system paths (e.g., `/home/user/...`) because `cron` does not execute with the same environmental variables or working directory as an interactive terminal.
* `crontab -e`: Command to edit the active user's cron schedule.
* `crontab -l`: Command to list the currently scheduled jobs.

---

## What I Built / Practiced

* Started the cron service manually in WSL using `sudo service cron start`.
* Refactored yesterday's `bulk_ingest.sh` pipeline to exclusively use absolute paths to guarantee safe execution in the background.
* Scheduled the ingestion script to run automatically every minute using the `* * * * *` syntax.
* Generated mock CSV files, waited for the system clock to roll over, and verified that the background job successfully identified and moved the data without human intervention.
* Removed the cron job after successful verification to prevent infinite execution.

---

## Challenges Faced

Didnt make the folder so the cron job failed, so i had to manually create it

---

## Key Takeaways

* `cron` is the original orchestrator. While modern Data Engineers use complex DAGs in Airflow or Prefect for dependencies, simple automated file movements and system cleanups are still universally handled by `cron`.

---

## Resources

- 

---

## Output

**Output**
```text
dynamic@DESKTOP-OCPA4E2:~/.../day-18$ crontab -l
* * * * * /home/dynamic/linux_challenge/30-days-of-learning/day-18/bulk_ingest.sh
