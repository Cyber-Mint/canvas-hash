# canvas-hash
Example for using a hash in service canvas file

## Usage
Add the script files to your project:
- chkhash.sh
- updatehash.sh

Add your project/micro-service `canvas.md` file as per usual.
Add the following line near the bottom of this file:
```
---

Code_MD5=d4a31301477c6a333b93d460133de560

---
Copyright &copy; 2022, Cyber-Mint (Pty) Ltd
```

Now run `./chkhash.sh` to confirm the hash of all the files in the `/src` folder match the hash in your `canvas.md` file (hash of hashes).  If they don't you may see **ERROR: Canvas HASH does not match File HASH**.
So `echo $?` will give you exit code of `1`.  You can also therefore use `./chkhash.sh` as a step in your CI pipeline to ensure developers are updating the `canvas.md` when changing code.

Once you are done modifying your `/src` files you can update your `canvas.md` hash entry by running `./updatehash.sh`.  

Running `./chkhash.md` now will now result in **Canvas HASH matches File HASH** with exit code `0` and you are ready to push your commit acknowledging you have updated your `canvas.md`.

Test it by changing any file in `/src` and running `./chkhash.sh`

---
Copyright &copy; 2022, Cyber-Mint (Pty) Ltd



