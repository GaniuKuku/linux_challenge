# Day 06 - Package Management with apt

## Objective

Learnt how to search for, install, and manage software packages using the Ubuntu package manager (`apt`).

---

## What I Learned

* `apt`: The default package manager for Debian/Ubuntu-based Linux distributions.
* `sudo apt update`: Refreshes the local catalog of available software. It is a best practice to run this *before* installing anything.
* `sudo apt install <package>`: Installs the requested software and its dependencies.
* `sudo apt remove <package>`: Uninstalls software.

---

## What I Built / Practiced

* Updated my local package lists.
* Installed `tree` (a directory visualization tool) and `jq` (a JSON parsing tool for future DE pipelines).
* Used `tree` to map out my current project repository.

---

## Challenges Faced

none

---

## Key Takeaways

* Linux doesn't rely on `.exe` installers. Data Engineers use package managers to quickly script the installation of their entire software environment.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/linux_challenge/30-days-of-learning$ tree
.
├── day-01
│   └── README.md
├── day-02
│   └── README.md
├── day-03
│   ├── README.md
│   └── big_data.txt
├── day-04
│   ├── README.md
│   └── pipeline.log
├── day-05
│   ├── README.md
│   └── run_pipeline.sh
└── day-06
    └── README.md
