# Day 12 - Parsing JSON Natively with jq

## Objective

Learn how to parse, format, and extract specific data points from complex JSON API responses using the `jq` utility.

---

## What I Learned

* `jq`: A lightweight, command-line JSON processor. It is the JSON equivalent of `sed` or `awk`.
* `jq '.'`: The identity filter. When applied to a raw JSON string, it acts as a "pretty-printer", formatting the output with proper indentation and syntax highlighting.
* `jq '.key.subkey'`: Used to navigate down the JSON tree to extract nested objects or specific key-value pairs.
* `jq -r`: The "raw" flag. It strips the JSON string quotation marks from the final output, outputting pure text that can be used in downstream bash scripts or databases.

---

## What I Built / Practiced

* Created a local `mock_api.json` file containing a simulated CoinCap API response to bypass a WSL2 DNS resolution bug.
* Piped the local JSON file into `jq '.'` to view the nested structure.
* Drilled down into the payload using `.data.priceUsd` to isolate the specific price metric.
* Used the `-r` flag to extract the pure numeric string of the Bitcoin price.
* Chained `cat`, `jq`, and redirection (`>>`) together to generate a clean, readable text report from the raw mock data.

---

## Challenges Faced

* Encountered the notorious WSL2 DNS bug (`curl: (6) Could not resolve host`) preventing live API extraction. 
* Pivoted the strategy from live web extraction to local data mocking to test the JSON transformation logic offline.


---

## Key Takeaways

* Data Engineers do not need a live internet connection to build and test data transformation logic. If the pipeline source is broken, mock the data locally and keep building.
* `jq` is the mandatory tool for extracting data from nested JSON structures.


---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-12$ echo '{"data":{"id":"bitcoin","symbol":"BTC","priceUsd":"67832.14"}}' > mock_api.json
dynamic@DESKTOP-OCPA4E2:~/.../day-12$ cat mock_api.json | jq -r '.data.priceUsd'
67832.14
dynamic@DESKTOP-OCPA4E2:~/.../day-12$ echo "Live Bitcoin Price:" > btc_report.txt
dynamic@DESKTOP-OCPA4E2:~/.../day-12$ cat mock_api.json | jq -r '.data.priceUsd' >> btc_report.txt
dynamic@DESKTOP-OCPA4E2:~/.../day-12$ cat btc_report.txt
Live Bitcoin Price:
67832.14
