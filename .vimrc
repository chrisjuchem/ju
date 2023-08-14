" for more https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

" Tabs & Whitespace

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set list
set listchars=tab:──▶,trail:·

"" Shift+Tab to insert an actual tab
imap <S-Tab> <C-O>:set noexpandtab<CR><Tab><C-O>:set expandtab<CR>

" Cursor

set whichwrap+=<,>,h,l,[,]
set ve=onemore

"" move past last line
noremap <expr> <DOWN> (line('.') == line('$') && col("$") > 1) ? 'o<Esc>' : '<DOWN>'
inoremap <expr> <DOWN> (line('.') == line('$') && col("$") > 1) ? '<C-o>o' : '<DOWN>'

"" word jumping
map <C-Right> e<Right>
imap <C-Right> <C-o>e<Right>
map <C-Left> b
imap <C-Left> <C-o>b

" Misc.

set number
:hi LineNr none

