# Day 14 - System Monitoring & Process Management

## Objective

Learn how to monitor core system resources (Disk, RAM, CPU) and manage running processes to ensure system stability.

---

## What I Learned

* `df -h`: Displays total available and used disk space across the file system.
* `du -sh`: Calculates the total disk space consumed by a specific directory.
* `free -h`: Displays current RAM (Memory) usage.
* `top`: An interactive, real-time monitor for system processes and CPU/RAM load.
* `ps aux`: Outputs a snapshot of all currently running processes.
* `kill -9 <PID>`: forcefully terminates a process using its Process ID.

---

## What I Built / Practiced

* Ran a system health check using `df` and `free` to verify available storage and memory.
* Used `du` to calculate the total size of my 30-day challenge repository.
* Spawned a background process (`sleep 3000 &`).
* Chained `ps aux | grep sleep` to locate the rogue process and identify its specific PID.
* Executed a forceful termination of the background process using `kill -9`.

---

## Challenges Faced

none

---

## Key Takeaways

* Before running massive data transformations, a Data Engineer must always check available memory and disk space. If a pipeline hangs, `ps` and `kill` are the fastest ways to reset the environment.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-14$ sleep 3000 &
[1] 14892
dynamic@DESKTOP-OCPA4E2:~/.../day-14$ ps aux | grep sleep
dynamic  14892  0.0  0.0   5264   704 pts/0    S    10:30   0:00 sleep 3000
dynamic@DESKTOP-OCPA4E2:~/.../day-14$ kill -9 14892
[1]+  Killed                  sleep 3000
