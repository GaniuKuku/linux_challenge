# Day 13 - Archiving & Compression

## Objective

Learn how to bundle and compress massive datasets using `tar` and `gzip` to optimize storage and network transfer efficiency.

---

## What I Learned

* **Archiving vs Compression:** Archiving (`tar`) bundles multiple files into one, while compression (`gzip`) shrinks the file size.
* `tar -czvf`: The standard command to **Create**, **zip** (compress), **Verbose** (print progress), to a **File**. Creates a `.tar.gz` archive (tarball).
* `tar -xzvf`: The standard command to **eXtract** a compressed tarball.
* `ls -lh`: The `-h` flag modifies the list command to output file sizes in "Human-readable" formats (K, M, G for Kilobytes, Megabytes, Gigabytes).

---

## What I Built / Practiced

* Generated a 500,000-row dummy log file using `seq`.
* Used `ls -lh` to verify the uncompressed dataset was roughly 3.8MB.
* Compressed the dataset into a tarball, reducing its size to a fraction of the original (~3.3MB).
* Simulated a data loss scenario by deleting the raw file and restoring it by extracting the `.tar.gz` backup.

---

## Challenges Faced

Trying to remember what all the letters in `-czvf` and `-xzvf` stand for.

---

## Key Takeaways

* Data Engineers must compress large datasets before migrating them across cloud environments (like pushing files to an AWS S3 bucket or GCP Cloud Storage) to reduce latency and egress costs.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-13$ ls -lh
total 4.7M
-rw-r--r-- 1 dynamic dynamic 1.1MB Apr 13 10:05 log_backup_2026.tar.gz
-rw-r--r-- 1 dynamic dynamic 3.3M Apr 13 10:04 massive_server_logs.txt
