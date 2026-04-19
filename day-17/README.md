# Day 17 - Automation with Loops

## Objective

Learn how to iterate over lists and directories using `for` and `while` loops to process multiple files in a single automated run.

---

## What I Learned

* **`for` Loops:** Executes a block of code a specific number of times based on a list of items or file patterns.
* **Wildcard Iteration (`*.csv`):** A powerful technique used to target all files sharing an extension within a directory, eliminating the need to hardcode file names.
* **`while` Loops:** Continues to execute code as long as a specific condition evaluates to true.
* **Variable Math (`$((...))`):** The syntax required to perform basic arithmetic in Bash (e.g., incrementing a counter variable).

---

## What I Built / Practiced

* Created a mock data engineering environment with a landing zone and a `bronze_layer` directory.
* Generated multiple mock CSV files.
* Wrote `bulk_ingest.sh`, a script that combines yesterday's `if` logic with today's `for` loop to safely identify, process, and move multiple files in bulk.
* Executed the script and verified that all files were routed to the correct destination automatically.

---

## Challenges Faced



---

## Key Takeaways

* Loops are essential for scalability. Whether you have 3 files or 30,000 files, the Bash `for` loop logic remains exactly the same, allowing data pipelines to scale effortlessly. 

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-17$ ./bulk_ingest.sh
Starting bulk ingestion pipeline...
Ingesting customer_data.csv into the Medallion Architecture...
Successfully moved customer_data.csv to bronze_layer.
Ingesting inventory_data.csv into the Medallion Architecture...
Successfully moved inventory_data.csv to bronze_layer.
Ingesting sales_data.csv into the Medallion Architecture...
Successfully moved sales_data.csv to bronze_layer.
All available datasets have been processed!
