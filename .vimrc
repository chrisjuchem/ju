" for more https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

set encoding=utf-8
scriptencoding utf-8

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
""" <C-O> for commands inside insert mode
noremap <expr> <DOWN> (line('.') == line('$') && col("$") > 1) ? '$<Right>' : '<DOWN>'
inoremap <expr> <DOWN> (line('.') == line('$') && col("$") > 1) ? '<C-O>$' : '<DOWN>'
"inoremap <expr> <DOWN> (line('.') == line('$') && col("$") > 1) ? '<C-O>o' : '<DOWN>'
""" restore from last line, delete into black hole register
"inoremap <expr> <UP> (line('.') == line('$') && col("$") == 1) ? '<C-O>"_dd' : '<UP>'

"" word jumping
map <C-Right> e<Right>
imap <C-Right> <C-o>e<Right>
map <C-Left> b
imap <C-Left> <C-o>b

" Misc.

set number
:hi LineNr none
