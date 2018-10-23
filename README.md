# Git-Status-Size

This is a small custom git command that allows you to see the sizes of all of the untracked, modified, and added files in a repo. Once installed you can call `git status-size` to get a list of file sizes in your terminal.

## Installation

1. `git clone https://github.com/jtloong/git-status-size`
2. `cd git-status-size`
3. You'll have to move the script into your git PATH. For my machine this would be `sudo cp git-status-size /usr/bin/`.
4. Make it into an executable with `chmod +x git-status-size`

NOTE: If you don't know your git PATH you can check with `type git`.

Now it should work! Go to  the terminal in any repo, call `git status-size`, and you should recieve an output like so:

```bash
----
Added: edited_file.jpg - 7.28 mb
Added: new_file.jpg - 7.28 mb
Modified: sequence-alignment/Untitled.ipynb - 0 mb
Modified: sequence-alignment/experiment_2.ipynb - 0 mb
Modified: sg2im - 0 mb
----
```
