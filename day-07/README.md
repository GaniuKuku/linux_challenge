# Day 07 - Environment Variables & .bashrc

## Objective

Understand how to securely store and manage system-wide and user-specific configurations using environment variables.

---

## What I Learned

* **Environment Variables:** Dynamic values that the operating system and running processes (like Python scripts) use to understand their environment.
* `$PATH`: The specific variable that tells Linux which directories to search when looking for executable commands.
* `export`: The command used to create an environment variable.
* `~/.bashrc`: A hidden shell script in the home directory that runs automatically every time a new terminal session is started.
* `source`: A command used to execute the contents of a file in the current shell, often used to instantly apply `.bashrc` updates without restarting the terminal.

---

## What I Built / Practiced

* Created a temporary environment variable using `export`.
* Used `echo` and the append operator (`>>`) to safely inject a permanent variable into the `~/.bashrc` system configuration file.
* Reloaded the system configuration using `source`.
* Called the variable using the `$` prefix to verify its existence.

---

## Challenges Faced

Remembering to use the `$` when calling the variable, compared to omitting the `$` when declaring it via `export`.

---

## Key Takeaways

* Data Engineers never hardcode secrets (like database passwords) into scripts. They inject them into the environment using tools like `.bashrc` (or `.env` files), where the scripts can read them securely via memory.

---

## Resources

- 

---

## Output

**Output**
```text
dynamic@DESKTOP-OCPA4E2:~/.../day-07$ echo 'export DE_PHASE="Phase_1_Complete"' >> ~/.bashrc
dynamic@DESKTOP-OCPA4E2:~/.../day-07$ source ~/.bashrc
dynamic@DESKTOP-OCPA4E2:~/.../day-07$ echo $DE_PHASE
Phase_1_Complete
