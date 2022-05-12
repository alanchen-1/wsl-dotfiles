set nocompatible              " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'preservim/vim-colors-pencil'
Plugin 'valloric/youcompleteme'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'pbrisbin/vim-colors-off'
Plugin 'owickstrom/vim-colors-paramount'
Plugin 'lervag/vimtex'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"formatting
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set incsearch
set number
set relativenumber
set showcmd
set shellslash
set expandtab
syntax on
filetype indent on
filetype on 
set belloff=all

set hidden

"NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

"configure colors
set termguicolors
set t_Co=256

"pencil
"let g:pencil_higher_contrast_ui=1
"let g:pencil_terminal_italics=1
"set background=light
"colorscheme pencil
"airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='pencil'

"off
"colorscheme off
"let g:colors_off_a_little=1

"paramount
colorscheme paramount
set background=light

"rose-pine
"colorscheme rose-pine-light
"hi LineNr ctermfg=6 guifg=#d7827e
"hi CursorLineNr ctermfg=6

"material
"let g:material_terminal_italics=1
"let g:material_theme_style = 'lighter'
"colorscheme material

"tempus
"let g:tempus_enforce_background_color=1
"colorscheme tempus_totus

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
let &t_SR = "\e[4 q"

"add mouse support
set mouse=a
if !has('nvim')
    if has("mouse_sgr")
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    end
endif

"no esc delay
let &t_ti.="\e[?7727h"
let &t_te.="\e[?7727l"
noremap <Esc>O[ <Esc>
noremap! <Esc>O[ <C-c>


"keybindings
autocmd filetype cpp inoremap{<CR> {<CR>}<Esc>O
autocmd filetype cpp inoremap{} {}
map <C-a> <esc>ggVG<CR>
autocmd filetype cpp nnoremap <F5> :w <bar> !build.sh %:r <CR>
autocmd filetype cpp nnoremap <F6> :vertical terminal ++shell ++cols=40 ./%:r<CR>

autocmd filetype tex inoremap{ {}<Esc>ha
autocmd filetype tex inoremap( ()<Esc>ha
autocmd filetype tex inoremap[ []<Esc>ha

"allow for clipboard
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
        augroup WSLYank
                    autocmd!
                            autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
                                augroup END
                            endif

"LaTeX
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:tex_flavor = 'latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"select template functionality
function TemplateCPP()
    echom "Creating *.cpp file \n"
    let alltemplates = split(globpath("~/.vim/templates/cpp/", "*.cpp"), '\n')
    let sz = len(alltemplates)
    let numberedtemplates = range(1, sz)
    
    for i in range(sz)
        let numberedtemplates[i] = "(" . string(i + 1) . "): " . alltemplates[i] 
    endfor

    let templatenum = inputlist(["Select a template:"] + numberedtemplates + ["(" . string(sz + 1) . "): " . "None"])
    let selected = get(alltemplates, templatenum - 1, "None")
    if selected !=# "None"
        exec ":0r " selected
    endif
endfunction

"template for cpp
autocmd BufNewFile *.cpp :call TemplateCPP()

"autocmd BufNewFile *.cpp 0r ~/code/cp/library/templates/cptemplate.cpp

"ycm stuff
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'

