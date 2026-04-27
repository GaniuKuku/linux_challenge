# Day 26 - Data Integrity and Checksums

## Objective

Learn how to guarantee the integrity of data files during transfer and storage using cryptographic hash functions.

---

## What I Learned

* **Hashing:** A mathematical process that converts a file of any size into a fixed-length string of characters (a digital fingerprint). Any microscopic change to the source file completely alters the resulting hash.
* `sha256sum`: The modern, secure command-line utility used to compute and verify SHA-256 cryptographic hashes.
* **Checksum Files (`.sha256`):** Text files used to store the verified hash of a dataset, heavily used by data vendors and cloud providers (like AWS S3 ETags) to validate downloads.
* `sha256sum -c`: The verification flag. It automatically reads a checksum file, recalculates the target file's hash in real-time, and strictly compares them for equality.

---

## What I Built / Practiced

* Created a mock `ledger.csv` containing simulated financial transactions.
* Generated an authoritative checksum file (`official_hash.sha256`) to lock in the dataset's exact state.
* Successfully verified the pristine file using the `-c` flag.
* Intentionally corrupted the dataset by appending unauthorized data.
* Re-ran the verification and successfully caught the `FAILED` mismatch, proving the data was no longer safe for downstream processing.

---

## Challenges Faced

Realizing that even opening a file in a text editor and accidentally adding a blank line at the bottom completely destroys the original checksum.

---

## Key Takeaways

* Blindly loading downloaded files into a data warehouse is a massive risk. Production data pipelines should always verify checksums before the ingestion phase to catch network corruption or incomplete downloads early.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-26$ sha256sum -c official_hash.sha256
ledger.csv: OK

dynamic@DESKTOP-OCPA4E2:~/.../day-26$ echo "9999,99999.99,CLEARED" >> ledger.csv
dynamic@DESKTOP-OCPA4E2:~/.../day-26$ sha256sum -c official_hash.sha256
ledger.csv: FAILED
sha256sum: WARNING: 1 computed checksum did NOT match
