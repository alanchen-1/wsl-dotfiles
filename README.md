Update: this is essentially deprecated now, don't have an intention of updating this.
# wsl-dotfiles
My dot and config files for Ubuntu (WSL) running on [wsltty](https://github.com/mintty/wsltty) (xterm-256color)
## Notes
### .wslttyconfig
An artificial directory because I use the %APPDATA% path on Windows to configure wsltty. The files under .wslttyconfig won't be 100% updated all the time but they don't really change often. 

### .vim/colors 🎨
I currently use a slightly modified [pencil](https://github.com/preservim/vim-colors-pencil) colorscheme for both wsltty and vim. I think the only things I changed were the cursor color and maybe the highlight/foreground color. I like its minimality, as I'm not a super fan of a blinding rainbow cornucopia of highlighting appearing on my screen every three seconds when I open something in vim. I'm a light theme enjoyer so I'm blinded enough 😭

Something I found out the hard way was that vim colorschemes won't work unless you also have the right ANSI-16 colors set for your terminal. The way you do this is different for each terminal - wsltty does it in RGB, check `./wslttyconfig/themes/`. There's two other themes I tried in there too ([Material Lighter](https://github.com/equinusocio/material-theme) and [Tempus Torus](https://github.com/protesilaos/tempus-themes)). Actually, I think the files in there are the first ports of these themes to wsltty<sup> citation needed </sup>, as I had to run some scripts/hand convert hex to rgb to make them, so thank me later if you use them. 

You can use `/scripts/colors.sh` to check if stuff looks right too. It just `curl`s from another online script and prints out all the colors your terminal is currently using. For the minimal schemes, I just needed to see what the 16 color layout was, but it does display 256 colors if you want to configure that too (wsltty even has support for truecolor I think). 

### .vimrc
Standard stuff, except I coded a custom template chooser when making new files (I needed for school/competitive programming)! Thank you to r/vim and /u/TheLeoP23 for helping with this one, check out the post [here](https://www.reddit.com/r/vim/comments/s5rmas/multiple_templates_for_same_filetype/). 
