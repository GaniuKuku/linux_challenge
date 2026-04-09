# Day 08 - Redirection & Piping

## Objective

Learn how to control the flow of data between commands and files using redirection operators and the Linux pipe.

---

## What I Learned

* `>` (Overwrite): Redirects standard output into a file, erasing any existing content.
* `>>` (Append): Redirects standard output to the end of a file, preserving existing content.
* `|` (Pipe): Takes the output of one command and passes it directly as the input to the next command.
* `wc -l`: A utility command that counts the number of lines in a file or piped output.

---

## What I Built / Practiced

* Built a mock dataset step-by-step using `echo` and `>>`.
* Chained multiple commands together using the pipe (`|`) to filter the data in memory.
* Counted the filtered rows using `wc -l`.
* Redirected the final, filtered dataset into a new CSV file using `>`.

---

## Challenges Faced

> instead of >>

---

## Key Takeaways

* Piping is the Linux equivalent of method chaining in programming. It allows Data Engineers to string together multiple small, single-purpose tools to execute complex data transformations entirely in the terminal.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-08$ cat raw_employees.csv | grep "Data Engineer" | wc -l
2

dynamic@DESKTOP-OCPA4E2:~/.../day-08$ cat raw_employees.csv | grep "Data Engineer" > clean_de_team.csv
dynamic@DESKTOP-OCPA4E2:~/.../day-08$ cat clean_de_team.csv
Alice,Data Engineer
Diana,Data Engineer
