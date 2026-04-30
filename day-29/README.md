# Day 29 - Web APIs, JSON Parsing, and Real-World Debugging

## Objective

Learn how to programmatically interact with REST APIs to extract live data, parse complex nested JSON structures using command-line utilities, and debug real-world network blocks.

---

## What I Learned

* `curl -s`: The standard CLI tool for transferring data over network protocols. The silent flag (`-s`) prevents progress meters from interfering with standard output but also hides error messages.
* `curl -v`: The verbose flag, critical for debugging network drops or DNS resolution failures.
* **URL Quoting:** URLs containing the `&` symbol must always be wrapped in double quotes (e.g., `"http://api.com?a=1&b=2"`). Otherwise, Bash misinterprets the `&` as a command to send the first half of the process to the background.
* `jq`: A lightweight and flexible command-line JSON processor. It is the industry standard for slicing, filtering, and mapping JSON data in Bash pipelines.
* `jq '.'`: The identity filter used to pretty-print unformatted JSON strings into readable structures.
* `jq -r`: The raw output flag. Strips JSON formatting (like quotation marks) from extracted strings, making the data compatible with standard text files or databases.

---

## What I Built / Practiced

* Encountered and successfully diagnosed a WSL DNS resolution bug (`Could not resolve host`) by using `curl -v` and `ping`.
* Experienced real-world Data Engineering security blocks when automated `curl` requests were rejected by Cloudflare on CoinDesk and Coinbase.
* Pivoted to a developer-friendly endpoint (CoinGecko / Binance) to bypass bot blockers.
* Piped the unformatted response body into `jq '.'` to visually inspect the JSON schema.
* Constructed precise `jq` queries (e.g., `.bitcoin.usd` or `.price`) to traverse the JSON tree and isolate a single metric.
* Dynamically generated a clean `btc_log.csv` file from the extracted JSON data using Bash variables.

---

## Challenges Faced

* Diagnosing a complete loss of WSL internet connectivity and fixing the DNS resolver.
* Dealing with "Access Denied" and silent failures from APIs actively blocking terminal-based web scrapers.
* Forgetting to put quotes around a URL, causing Bash to split the URL in half and throw a "Missing parameter" error.

---

## Key Takeaways

* Modern Data Engineering is messy. APIs change, servers block bots, and networks drop. The ability to quickly hit an endpoint with `curl`, debug the connection, inspect the schema with `jq`, and test data extraction logic entirely in the terminal saves countless hours compared to writing full Python scripts just to see if an API is alive.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-29$ cat btc_log.csv
bitcoin,usd,65432.10
