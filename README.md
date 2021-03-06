# jvim
For a Jupyter Notebook like experience in Vim.

*Note to advanced users - Using the installers below will replace your .vimrc and .tmux.conf. If you care, you can fork the repo and update the .vimrc and .tmux.comf to meet your needs - doing so won't break the install scripts.*

## Installation
### Download the repository:

    git clone https://github.com/Lyonk71/jvim.git ~/jvim
    
### Run the install script:

For for Arch/Manjaro:
```
bash ~/jvim/arch_install.sh
```

For Debian/Mint/Ubuntu:
```
bash ~/jvim/debian_install.sh
```

For Fedora/CentOS/RHEL:
```
bash ~/jvim/fedora_install.sh
```

### How to Start jvim
1. Start tmux, and create two panes.
2. In pane 0, open a `.py` file with vim.
3. In pane 1, start iPython, then press f1.

### Commands
`f1` -->  Clears all output and restarts iPython.  
`f2` -->  Runs code from top of file to nearest delimiter below cursor.  
`f3` -->  Runs code between two delimiters.  
`f4` -->  Runs selected code.  
