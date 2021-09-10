### HASKELL PERL
Just run 
```bash
sh ./run_instructions.sh . instructions.txt main.hs
```
After interpretation the `main.hs` file the expressions from the `instructions.txt` file will be applied and you can see the stdout.

Or you can run command below to restart the `./run_instructions.sh` script after modifying `hs` or `txt` files.
```bash
sh ./watch_haskell.sh . instructions.txt main.hs
```
This one based on [node.js](https://nodejs.org/en/) and [nodemon](https://www.npmjs.com/package/nodemon) cli
