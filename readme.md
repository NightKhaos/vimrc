# What is this?

This is NightKhaos' vimrc configuration and pathogen modules.

NightKhaos uses this to initialise his enviroments to get vim just the way he likes it on any machine simplying by running:

    cd
    git clone --recursive https://github.com/NightKhaos/vimrc.git .vim
    vim +PluginInstall

## Help I've installed it but it isn't working on my machine!

Some versions of vim do not look in $HOME/.vim/vimrc for a vimrc file. In particular I have noticed this with the out of the box vim provided on Mac OS X. To work around this behaviour you can simply create a symbolic link to the vimrc file like so:

    ln -s .vim/vimrc .vimrc
