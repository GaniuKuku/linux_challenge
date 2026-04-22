# Day 21 - Incremental Data Transfers with rsync

## Objective

Learn how to efficiently synchronize directories and perform incremental backups using the `rsync` utility to minimize data transfer costs.

---

## What I Learned

* **`rsync`:** A fast and versatile CLI tool that uses a delta-transfer algorithm to only copy files that have changed or are new, rather than copying entire datasets blindly.
* **Flags:** `-a` (Archive mode for preserving metadata and recursion) and `-v` (Verbose output).
* **The Trailing Slash Rule:** Understanding that `source/` copies the *contents* of the directory, while `source` copies the directory itself.
* **`--delete`:** Forces the destination to become a perfect mirror of the source by removing files that no longer exist in the origin.
* **`--dry-run`:** A critical safety feature that simulates the sync without making actual disk changes, allowing Data Engineers to test destructive commands safely.

---

## What I Built / Practiced

* Created mock `active_data` and `backup_vault` directories.
* Executed an initial `rsync` to baseline the backup vault.
* Added new data to the source and re-ran the command, verifying that `rsync` skipped existing data and only transferred the incremental changes.
* Used `--dry-run` to safely preview a `--delete` mirror operation before executing it.

---

## Challenges Faced

Remembering to add the trailing slash on the source folder so I didn't accidentally nest `active_data` inside `backup_vault`.

---

## Key Takeaways

* Data Engineers must respect network bandwidth and compute costs. By using `rsync` over `cp` for batch movements, pipelines run faster and consume a fraction of the resources.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-21$ rsync -av active_data/ backup_vault/
sending incremental file list
./
march_sales.csv

sent 147 bytes  received 38 bytes  370.00 bytes/sec
total size is 0  speedup is 0.00
