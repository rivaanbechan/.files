" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"Remap esc
inoremap kj <esc>
cnoremap kj <esc>

set nu "number lines
"source $VIMRUNTIME/colors/fu.vim "colour theme not scheme
"source $VIMRUNTIME/colors/blazer.vim "colour theme not scheme
"set mouse=a "mouse functionality (like gvim!)
set tw=10000 "no wrapping text onto the next line
set listchars+=precedes:<,extends:> "when nowrap is set-has carroots when a line extends beyond the edge
syntax on "colours!
set backspace=indent,eol,start "makes backspace work in Vim 7.3
set hls "highlighting!
set ruler "for cursor position in the bottom right corner
set incsearch "search begins as soon as you start typing instead of waiting for <ENTER>
set ai! "auto indent

set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,resize

set expandtab "no tab characters, spaces instead except with makefiles
autocmd BufReadPost,FileReadPost,BufNewFile [Mm]ake{file,} setlocal noexpandtab

"more tabs for my python style
au BufRead,BufNewFile *.py set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set rnu!

"==================================================
"rebinds
"==================================================
"traverse ?buffer? instead of line
"nnoremap gk k
"nnoremap gj j
"nnoremap k gk
"nnoremap j gj

"scroll buffer with better names
"nnoremap <C-J> <C-E>
"nnoremap <C-K> <C-Y>
"vnoremap <C-J> <C-E>
"vnoremap <C-K> <C-Y>

"change tabs directionaly with ^h and ^l
nnoremap <C-h> gT
nnoremap <C-l> gt

"stretch buffers
"nnoremap + <C-W>+
"nnoremap - <C-W>-

"alternate keys for indenting/unindenting
"inoremap <S-Tab> <C-O><LT><LT>
nnoremap <Tab> >>
"nnoremap <S-Tab> <LT><LT>j
inoremap <S-Tab> <C-p>
vnoremap <Tab> >
vnoremap <S-Tab> <LT>

"colorscheme
"let g:solarized_termcolors=16
"colorscheme solarized
"set background=dark

"rebind for space: prime real estate wasted by default
nnoremap <Space> <ESC>

"highlighting extra whitespace from max
hi def link whiteSpaceError Error
autocmd Syntax * syn match whiteSpaceError "\(\S\| \)\@<=\t\+"
autocmd Syntax * syn match whiteSpaceError "\s\+\%#\@<!$"

"fugitive.vim
nnoremap <C-g>c :Gcommit
nnoremap <C-g>a :Gwrite

"slimux
"I have this built into the script, which is not
"what the original has
nnoremap <C-c><C-c> :SlimuxREPLSendLine<CR>
vnoremap <C-c><C-c> :SlimuxREPLSendLine<CR>
nnoremap <C-c><C-v> :SlimuxREPLConfigure<CR>

"paste formatted time
nnoremap t "=strftime("%Y-%m-%d %H:%M:%S")<CR>P

"Hackernews
nnoremap <F3> :HackerNews<CR> 

"Disable numbers for copy
nnoremap <F12> :set rnu! nu!<CR> 
