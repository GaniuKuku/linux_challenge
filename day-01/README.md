# Day 01 - WSL2 Architecture & Navigation

## Objective

What was the goal for today?

Understand the boundary between Windows and Linux file systems in WSL2, and navigate the terminal to locate and manage my project directory.

## What I Learned

* `pwd` (Print Working Directory) outputs my exact current location in the file system.
* `ls` lists the files and folders inside my current directory.
* `cd` (Change Directory) allows me to navigate between different folders.
* The Linux file system home directory is represented by the tilde shortcut `~`.
* The Windows `C:\` drive is mounted and accessible in Linux at `/mnt/c/`.
* The difference between relative paths (looking inside the current folder) and absolute paths (starting from the root `/`).


---

## What I Built / Practiced

* Navigated from the Linux home directory into the Windows C: drive.
* Traversed my pre-built project workspace: `~/linux_challenge/30-days-of-learning/`. 

---

## Challenges Faced

* Encountered a "No such file or directory" error by typing `cd mnt/c/` (relative path) instead of `cd /mnt/c/` (absolute path). 
* Received "Permission denied" errors when running `ls` in the Windows C: drive because WSL2 respects Windows system file security (e.g., `pagefile.sys`).

---

## Key Takeaways

* Code and databases should always be stored in "Linux Land" (`~`) rather than "Windows Land" (`/mnt/c/`) to ensure fast read/write speeds for Data Engineering tasks.
* Running `cd ~` acts as a perfect escape button to return safely to the Linux home directory from anywhere.

---

## Resources

* [Microsoft WSL Basic Commands](https://learn.microsoft.com/en-us/windows/wsl/basic-commands)

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning$ cd /mnt/c/
dynamic@DESKTOP-OCPA4E2:/mnt/c$ ls
ls: cannot access 'DumpStack.log.tmp': Permission denied
ls: cannot access 'pagefile.sys': Permission denied

dynamic@DESKTOP-OCPA4E2:/mnt/c$ cd ~
dynamic@DESKTOP-OCPA4E2:~$ cd linux_challenge/30-days-of-learning/day-01
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-01$ pwd
/home/dynamic/linux_challenge/30-days-of-learning/day-01
