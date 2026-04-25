# Day 24 - Live Monitoring with tail and watch

## Objective

Learn how to safely inspect massive datasets and monitor real-time background processes without overloading system memory.

---

## What I Learned

* `head -n <lines>`: Extracts the top lines of a file. Critical for verifying headers or schemas in multi-gigabyte CSVs without opening them.
* `tail -n <lines>`: Extracts the bottom lines of a file. Used to check the most recent entries in long-running logs.
* `tail -f`: The "follow" flag. Attaches to the end of a file and streams new appended data to the terminal in real-time.
* `watch -n <seconds>`: An execution loop that runs a specified command at a set interval, turning standard outputs (like `ls` or `df`) into live dashboards.
-

---

## What I Built / Practiced

* Built `generator.sh`, an infinite loop script that generates randomized simulated server logs.
* Spawned the generator as a background process (`&`).
* Extracted static snapshots of the data using `head` and `tail`.
* Hooked into the live data stream using `tail -f` to observe the pipeline running in real-time.
* Created a live file-size dashboard using `watch -n 1 ls -lh` to monitor disk consumption dynamically.
* Located and terminated the infinite loop using `ps aux` and `kill -9`.

---

## Challenges Faced

- 
- 

---

## Key Takeaways

Never use text editors (`nano`, `vim`) to view production logs or massive CSV files. `head` and `tail` pull data directly from the disk without loading the whole file into RAM, keeping the server safe from memory crashes. 


---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-24$ tail -f system.log SERVER_METRIC - CPU: Normal | RAM: 45% SERVER_METRIC - CPU: Normal | RAM: 82% SERVER_METRIC - CPU: Normal | RAM: 12%
^C
