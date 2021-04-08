# How to use

1. Start WSL

2. Run `set-wsl-ip-to-hosts-file.ps1` as Administrator

3. Your test domains are set.


# `.bashrc`

## Show current git branch

Add these lines of code to `.bashrc` file inside of WSL

```bash
# set prompt to show current git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1 >/'
}
export PS1="\u@\h \[\e[255;48;5;32m\]\w >\[\e[255;48;5;2m\]\$(parse_git_branch)\[\e[00m\] $ "
```

## Start docker on WSL console start

```bash
# start docker service
sudo service docker start
```

## Go to `code` folder automatically

```bash
# go to code folder
cd code
```

## Create alias commands for docker

```bash
alias dup="docker-compose up -d"
alias dst="docker-compose stop"
```

# License

Free.
