# Day 30 - Data Governance & PII Masking Pipeline

## Objective

What was the goal for today?

Build an entirely offline, native Linux data sanitization pipeline to process sensitive CSV files, masking Personally Identifiable Information (PII) to comply with data governance standards.

## What I Learned

* **Data Governance Security:** The practical implementation of protecting sensitive user data (like emails and credit card numbers) before it enters a data warehouse or analytics environment.
* **Advanced `awk` Processing:** Moving beyond basic text extraction to dynamic string manipulation.
* **String Splitting (`split`):** Using `awk` to dynamically target specific characters (like the `@` symbol) to isolate domains for masking.
* **Substring Extraction (`substr`):** Dynamically calculating string lengths to preserve exactly the last four digits of sensitive financial data.

---

## What I Built / Practiced

* Wrote `sanitize_pipeline.sh`, a zero-dependency Bash script that securely processes raw customer CSV files.
* Implemented row-level logic (`NR==1` vs `NR>1`) to preserve file headers while aggressively mutating underlying data rows.
* Outputted a completely sanitized `clean_customers.csv` file ready for secure downstream database insertion.

---

## Challenges Faced

* Navigating `awk` syntax for conditional row processing (ensuring the CSV header row wasn't accidentally masked).
* Figuring out how to dynamically split strings and calculate lengths for the credit card substring extraction without breaking the CSV delimiter format.

---

## Key Takeaways

* Data Engineering is as much about data *protection* as it is about data *movement*. Handling PII safely is a critical, highly sought-after skill in the enterprise world.
* Native Linux tools like `awk` are incredibly powerful for high-speed, lightweight data transformations. You do not always need a heavy Python or Pandas environment to do complex, secure data masking.

---

## Resources

- 

---

## Output
```text
dynamic@DESKTOP-OCPA4E2:~/.../day-30$ cat clean_customers.csv
id,name,email,credit_card
1,Alice Smith,alice.smith@***.redacted,****-****-****-4444
2,Bob Jones,bob99@***.redacted,****-****-****-8888
3,Charlie Brown,cbrown.dev@***.redacted,****-****-****-2222
