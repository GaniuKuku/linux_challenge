# Day 22 - Parallel Processing with xargs

## Objective

Transition from sequential looping to concurrent data processing using `xargs` to drastically reduce pipeline execution time.

---

## What I Learned

* **Concurrency vs. Sequential:** Sequential processing (like standard `for` loops) handles one file at a time, leaving system resources underutilized. Concurrency handles multiple files simultaneously.
* `xargs`: A command-line utility that builds and executes command lines from standard input.
* `-I {}`: The placeholder flag for `xargs`, allowing you to explicitly define where the piped argument should be injected into the execution string.
* `-P <N>`: The parallel flag. Dictates the maximum number of parallel processes `xargs` is allowed to run simultaneously.
* `time`: A utility command used to benchmark the exact real, user, and system time a script or command takes to execute.

---

## What I Built / Practiced

* Built `transform_to_silver.sh`, a mock data processing script simulating a heavy, 2-second transformation job.
* Benchmarked a standard `for` loop sequentially processing 5 files, recording a ~10 second total execution time.
* Piped the file list into `xargs -P 5` to process the Medallion Architecture progression (Bronze to Silver) in parallel.
* Smashed the benchmark, reducing the 10-second job down to ~2 seconds by utilizing 5 concurrent workers.

---

## Challenges Faced

- 
- 

---

## Key Takeaways

* CPU cores are meant to be used. When processing historical backfills or massive batches of log files, chaining `find` or `ls` into `xargs -P` can turn a 5-hour data pipeline into a 1-hour data pipeline with zero changes to the underlying Python or Bash scripts.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-22$ time ls bronze_layer/*.csv | xargs -I {} -P 5 ./transform_to_silver.sh {}
Worker started: Transforming data_1.csv to Silver...
Worker started: Transforming data_2.csv to Silver...
Worker started: Transforming data_3.csv to Silver...
Worker started: Transforming data_4.csv to Silver...
Worker started: Transforming data_5.csv to Silver...
Worker finished: data_2.csv is now Silver.
Worker finished: data_4.csv is now Silver.
Worker finished: data_1.csv is now Silver.
Worker finished: data_3.csv is now Silver.
Worker finished: data_5.csv is now Silver.

real    0m2.035s
user    0m0.010s
sys     0m0.025s
