# wsl-dotfiles
My dot and config files for my Ubuntu running on WSL2 ([wsltty](https://github.com/mintty/wsltty))
## Notes
### .wslttyconfig
An artificial directory because I use the %APPDATA% path on Windows to configure wsltty. The files under .wslttyconfig won't be 100% updated all the time but it is what it is. 

### .vim/colors
Something I found out the hard way was that vim colorschemes won't work unless you also have the right ANSI-16 colors set for your terminal. The way you do this is different for each terminal - wsltty does it in RGB, check `./wslttyconfig/themes/`.

### .vimrc
Standard stuff, except I coded a custom template chooser when making new files! Thank you to r/vim and /u/TheLeoP23 for helping with this one, check orig post [here](https://www.reddit.com/r/vim/comments/s5rmas/multiple_templates_for_same_filetype/). 
