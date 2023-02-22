" for more https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set whichwrap+=<,>,h,l,[,]
set ve=onemore

set number
:hi LineNr none

imap <C-Right> <C-o>e<Right>
map <C-Right> e<Right>
map <C-Left> b
imap <C-Left> <C-o>b
