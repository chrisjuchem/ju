" for more https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

" Tabs & Whitespace

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

 "" Shift+Tab to insert an actual tab
imap <S-Tab> <Esc>:set noexpandtab<CR><Right>i<Tab><Esc>:set expandtab<CR><Right>i

set list
set listchars=tab:──▶,trail:·

" Cursor

set whichwrap+=<,>,h,l,[,]
set ve=onemore

imap <C-Right> <C-o>e<Right>
map <C-Right> e<Right>
map <C-Left> b
imap <C-Left> <C-o>b

" Misc.

set number
:hi LineNr none
