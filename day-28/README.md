# Day 28 - Secure Connections (ssh & scp)

## Objective

Learn how to generate cryptographic key pairs to authenticate with remote servers and securely transfer data without relying on passwords.

---

## What I Learned

* **Public Key Cryptography:** The concept of using a Private Key (kept secret on the host machine) and a Public Key (shared with remote servers) to securely authenticate connections.
* `ssh-keygen`: The command line utility used to generate new cryptographic key pairs. `ed25519` is the modern, secure algorithm standard.
* `ssh`: Secure Shell. The protocol used to open an encrypted terminal session on a remote machine.
* `scp`: Secure Copy Protocol. Used to securely push or pull files across an SSH connection.
* `authorized_keys`: The hidden file within the `~/.ssh/` directory that stores the public keys allowed to access the machine.

---

## What I Built / Practiced

* Generated a modern `ed25519` SSH key pair without a passphrase for automated pipeline integration.
* Woke up the WSL SSH daemon using `sudo service ssh start`.
* Injected the newly generated public key into the local `authorized_keys` file and secured its permissions using `chmod 600`.
* Successfully authenticated a passwordless `ssh` session into `localhost`.
* Utilized `scp` to push a mock `top_secret.csv` dataset into a target directory over the encrypted network protocol.

---

## Challenges Faced

- 
- 

---

## Key Takeaways

* Hardcoding passwords into Data Engineering scripts is a massive security violation. Automated pipelines must use SSH keys to access remote servers, databases, and cloud storage instances safely.

---

## Resources

- 

---

## Output

```text
dynamic@DESKTOP-OCPA4E2:~/.../day-28$ scp top_secret.csv localhost:~/linux_challenge/30-days-of-learning/day-28/secure_vault/
top_secret.csv
