# Day 11 - Fetching Data with curl and wget

## Objective

Learn how to programmatically extract data from web APIs and remote servers directly into the Linux environment.

---

## What I Learned

* `curl`: A command-line tool used to transfer data to/from a server, primarily used by Data Engineers to interact with REST APIs.
* `curl -s`: The "silent" flag, which suppresses the progress meter to ensure clean data output.
* `wget`: A non-interactive network downloader used to fetch files and save them directly to the disk.

---

## What I Built / Practiced

* Used `curl -s` to hit a public API and pull live JSON data into the terminal.
* Redirected the live API JSON output into a local file (`btc_live_data.json`).
* Used `wget` to download a historical CSV dataset directly from a raw GitHub URL.

---

## Challenges Faced

reading the raw json from the API because it is unformatted

---

## Key Takeaways

* `curl` is for talking to APIs and handling data streams in memory, while `wget` is the workhorse for downloading static files and datasets to the disk.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-11$ curl -s [https://api.coincap.io/v2/assets/bitcoin](https://api.coincap.io/v2/assets/bitcoin) > btc_live_data.json
dynamic@DESKTOP-OCPA4E2:~/.../day-11$ wget [https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv](https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv)
dynamic@DESKTOP-OCPA4E2:~/.../day-11$ ls -la
total 76
drwxr-xr-x 2 dynamic dynamic  4096 Apr 12 10:00 .
drwxr-xr-x 4 dynamic dynamic  4096 Apr 12 09:50 ..
-rw-r--r-- 1 dynamic dynamic   354 Apr 12 10:00 btc_live_data.json
-rw-r--r-- 1 dynamic dynamic 60302 Apr 12 10:00 titanic.csv
