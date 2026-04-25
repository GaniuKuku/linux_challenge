# Day 23 - Bulletproof Sessions with tmux

## Objective

Learn how to use terminal multiplexing (`tmux`) to protect long-running data pipelines from network drops and terminal closures.

---

## What I Learned

* **Terminal Multiplexing:** The concept of running persistent, virtual terminal sessions that survive independently of the main SSH or WSL connection.
* `tmux new -s <name>`: Creates and attaches to a new named session.
* **The Prefix Key (`Ctrl + B`):** The mandatory escape sequence required to send commands directly to the `tmux` engine.
* **Detaching (`Ctrl + B`, then `D`):** Safely disconnecting from a session while leaving all internal processes running in the background.
* `tmux ls`: Lists all currently active background sessions.
* `tmux attach -t <name>`: Re-enters a detached session.

---

## What I Built / Practiced

* Authored `long_job.sh`, a mock script simulating a 100-second data extraction.
* Initialized a new `tmux` session named "extraction" and executed the script inside it.
* Successfully detached from the session while the script was running.
* Simulated a total connection failure by completely closing the terminal window.
* Reopened the terminal, used `tmux ls` to locate the surviving session, and used `tmux attach` to recover the running pipeline without losing any state or data.

---

## Challenges Faced

- 
- 

---

## Key Takeaways

* Never run a pipeline that takes longer than 5 minutes directly in a raw terminal. Always wrap it in `tmux` (or `screen`) to guarantee that a random Wi-Fi drop doesn't corrupt an hour of processing time.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-23$ tmux ls
extraction: 1 windows (created Fri Apr 24 10:00:00 2026)
dynamic@DESKTOP-OCPA4E2:~/.../day-23$ tmux attach -t extraction
