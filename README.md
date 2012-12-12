zsh-universal-variables
=======================
**[Fish shell](http://www.fishshell.com) like universal variables for [Zsh](http://www.zsh.org).**
Universal Variables are set throughout the shells. They are a type of global Variables. The major difference to fish is: they are not persistent and won't last over a session of open terminals. Therefore, the universal variables won't be set for new terminals.

How to install
--------------

### Using packages

* At the moment there are no packages to for universal variables

### In your ~/.zshrc

* Download the script or clone this repository:

        git clone git@github.com:nv1t/zsh-universal-variables.git

* Source the script **at the end** of `~/.zshrc`:

        source /path/to/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

* Source `~/.zshrc`  to take changes into account:

        source ~/.zshrc

### With oh-my-zsh
* Download the script or clone this repository in [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh) plugins directory:

        cd ~/.oh-my-zsh/custom/plugins
        git clone git@github.com:nv1t/zsh-universal-variables.git

* Activate the plugin in `~/.zshrc` (in **last** position):

        plugins=( [plugins...] zsh-universal-variables)

* Source `~/.zshrc`  to take changes into account:
    
        source ~/.zshrc

Usage
-----
* The Keyword universal executes a command on every possible shell before next command execution:

        universal export STR="Hello World!"
        universal STR="Hello World!"

* The Environment variables won't get saved, it's just active for the session
