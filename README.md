# Git-Status-Size

This is a small custom git command that allows you to see the sizes of all of the untracked, modified, and added files in a repo. Once installed you can call `git status-size` to get a list of file sizes in your terminal. I've had the unfortunate habit of accidentally trying to push to remote large files when I should have added them to a `.gitignore`. So I created this utility to help me easily check file sizes before I track, commit, or push files, and add them to my .gitignore if I need to.

<p align="center"><img src="/img/example.gif?raw=true"/></p>

## Installation

1. `git clone https://github.com/jtloong/git-status-size`
2. `cd git-status-size`
3. To invoke it anywhere you'll need to export the file into your PATH. In your script file use `export PATH="/path/to/your-script/directory:$PATH`
4. Make it into an executable with `sudo chmod +x git-status-size`

NOTE: If you don't know your git PATH you can check with `type git`.

Now it should work! Go to the terminal in any repo, call `git status-size`, and you should recieve an output like the one in the gif above. If you have any files over Github's 100 mb limit, you will be prompted if you want to add these files to your `.gitignore`.
