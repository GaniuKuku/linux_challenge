# Day 05 - Permissions & Ownership

## Objective

Understand Linux file security, how to read permission strings, and how to grant execution rights to scripts.

---

## What I Learned

* `sudo`: Allows a permitted user to execute a command as the superuser (root).
* `ls -l`: Displays file permissions in a 10-character string (e.g., `-rwxr-xr-x`). 
* `rwx`: Stands for Read, Write, and Execute.
* `chmod`: Changes file permissions. `chmod +x` is vital for making scripts runnable.
* `chown`: Changes the user and group ownership of a file.

---

## What I Built / Practiced

* Created a mock bash script (`run_pipeline.sh`).
* Experienced a standard "Permission denied" error when trying to run an unexecutable file.
* Used `chmod +x` to successfully grant execute permissions and run the script.
* Used `sudo` to create a file and observed how ownership defaults to `root`.

---

## Challenges Faced

typing my password

---

## Key Takeaways

* Whenever a script or pipeline fails with "Permission denied", the very first thing to check is `ls -l` to ensure the file has the `x` (execute) permission.

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-05$ ./run_pipeline.sh
bash: ./run_pipeline.sh: Permission denied

dynamic@DESKTOP-OCPA4E2:~/.../day-05$ chmod +x run_pipeline.sh
dynamic@DESKTOP-OCPA4E2:~/.../day-05$ ./run_pipeline.sh
Extracting data from database...
