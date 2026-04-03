# Day 03 - Viewing & Searching Files

## Objective

Learnt how to efficiently inspect file contents and search for files within the Linux file system without overloading system memory.

---

## What I Learned

* `cat`: Best for displaying small files entirely.
* `less`: A "pager" tool that allows scrolling through large files without loading them fully (Press `q` to exit).
* `head`: Displays the top of a file (useful for checking CSV headers).
* `tail`: Displays the bottom of a file.
* `tail -f`: Monitors a file in real-time as it grows (crucial for debugging live data pipelines).
* `find`: Locates files based on names or extensions across directories.

---

## What I Built / Practiced

* Created a 50-line dummy dataset using the `seq` command.
* Inspected specific parts of the data using `head -n` and `tail -n`.
* Navigated a file interactively using `less`.

---

## Challenges Faced

Forgetting how to exit `less` (it's 'q'!)

---

## Key Takeaways

* Data Engineers use `head` to verify schema and `tail -f` to watch logs. Never use `cat` on large production datasets.

---

## Resources

https://portal.netdevgroup.com/learn/linux-essentials/JWe484RjFu/ 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-03$ seq 50 > big_data.txt
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning/day-03$ cat big_data.txt
1
2
3
