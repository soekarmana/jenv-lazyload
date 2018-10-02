# jenv-lazyload

load jenv without slowing down your shell
based on : https://gist.github.com/lukeshiru/e239528fbcc4bba9ae2ef406f197df0c
see the full article & discussion at : https://www.growingwiththeweb.com/2018/01/slow-nvm-init.html

Requirement :
- [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh#basic-installation)

## Plugin Installation

Make sure [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH) and [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh#basic-installation) installed properly.

## Clone this repository to your custom plugin directory

    git clone https://github.com/soekarmana/jenv-lazyload.git  ~/.oh-my-zsh/custom/plugins/jenv-lazyload/


## Enable the plugin:
To enable the plugin you have to edit your `.zshrc` and add `jenv-lazyload` to the plugins.

    # vim ~/.zshrc
    plugins=(history git jenv-lazyload)

simply run `exec $SHELL` or open new session to reload `zsh`

