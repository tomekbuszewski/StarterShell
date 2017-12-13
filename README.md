# Shell interface for „Starter” repository
This is a shell interface for my [Starer](https://github.com/tomekbuszewski/Starter) repo. Can be used to initialize new project based on this starter kit.

## Usage
Just run `./init.sh` either as a root or just CHMOD it before:
```
$ chmod 755 ./init.sh
$ ./init.sh
```
This will result in interactive shell interface where you’ll be asked to choose either bare ES6 project or React project. 

Either choice will result in cloning the repo (with corresponding branch) and then removing `.git` directory. Rest is up to you.