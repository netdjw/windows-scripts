# Set WSL IP address to Windows's hosts file

1. Start WSL

2. Create a copy of `hosts.example` as `hosts` file.

3. Set up your domain in newly created `hosts` file.

4. Run `& ".\set-wsl-ip-to-hosts-file.ps1"` command in PowerShell as Administrator

5. Your test domains are set.

On next time you need use only the 4. step.

If you want to add new domain, just use 3. and 4. step.


# Set up your `.bashrc`

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

## Sync your WSL datetime

First run this command:

`sudo apt install ntpdate`

Then add this lines to `.bashrc`

```bash
# sync system date
sudo ntpdate pool.ntp.org
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
