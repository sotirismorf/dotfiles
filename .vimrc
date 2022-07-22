syntax on

set nocompatible
set noerrorbells

"command for switching spaces to tabs
" :%s/^\(^I*\)␣␣␣␣/\1	/g
" :%s/  /\1	/g
" :%s/^\(^I*\)	/\1    /g
" :%s/	/\1    /g
set autoindent
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nu
set encoding=UTF-8
set formatoptions-=cro
set number
set wrap
set smartcase
set clipboard=unnamedplus
set noswapfile
set mouse=a
set list listchars=trail:·,tab:│\ ,precedes:-
set nobackup
set incsearch
set showcmd
set splitbelow splitright
set wildignore=.git,*.o,*.out,*.so,*.swp,*.jpg,*.png,*.pdf

"Automatically source .vimrc when saved
autocmd! bufwritepost .vimrc source %
autocmd BufWritePost ~/.suckless/dwmblocks/config.h !cd ~/.suckless/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=0 expandtab

augroup filetypedetect
     au! BufRead,BufNewFile *.m setfiletype octave
augroup END

" PLUGINS

call plug#begin('~/.vim/plugged')

"Colorscheme
Plug 'morhetz/gruvbox'
"Minimalist editor for reading and/or writing text
Plug 'lyuts/vim-rtags'
Plug 'pangloss/vim-javascript'
"Color preview
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"For auto bracket completion
Plug 'jiangmiao/auto-pairs'
"Nice directory tree
Plug 'scrooloose/nerdtree'
"Autocomplete
"Plug 'vim-scripts/AutoComplPop'
"Plug 'ycm-core/YouCompleteMe'
"Color
Plug 'ap/vim-css-color'

call plug#end()

let mapleader = " "

" COLORSCHEME SETTINGS
colorscheme gruvbox
set background=dark
"highlight clear LineNr
"hi normal ctermbg=NONE
"Line between buffers
"hi vertsplit ctermfg=fg ctermbg=NONE cterm=NONE
"Unfocused buffer's statusline
"hi statuslinenc cterm=NONE ctermbg=NONE ctermfg=fg 
"Focused buffer's statusline
"hi statusline cterm=NONE ctermbg=NONE ctermfg=fg

"AUTOCOMPLETE
" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"  .: The current buffer
"  w: Buffers in other windows
"  b: Other loaded buffers
"  u: Unloaded buffers
"  t: Tags
"  i: Included files

"let g:acp_completeOption = '.,w,b,u,k,t,i'
"set completeopt=menuone
"set complete+=i

let g:UltiSnipsExpandTrigger = '<S-cr>'
"let g:UltiSnipsJumpForwardTrigger = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'


" MAPPING ESC TO JJ
imap jj <Esc>
imap JJ <Esc>

" REMAPS
"Put quotes around word with " and ''
vnoremap " s""<Esc>P
vnoremap '' s''<Esc>P
nnoremap '' ciw''<Esc>P
nnoremap " ciw""<Esc>P
" Remove quotes
nnoremap d' diwhPl2x

" Greek keymap with Control+(anguage)
nnoremap <C-m> :set keymap=greek_utf-8<cr>

"Split navigation with control + H,J,K,L
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k> 
nnoremap <C-l> <C-w><C-l>



"Keep text selected when shifting
vnoremap < <gv
vnoremap > >gv

"Write with CTRL+S
nnoremap <C-s> :w<cr>
"Go to next buffer
map <leader>n :bn<cr>
"Toggle nerdtree
nnoremap <Leader>b :NERDTreeToggle<cr>
"Compile C++ single files
nnoremap <Leader>v :term compiler %<cr>
nnoremap <Leader>c :term compileandrun<cr>

