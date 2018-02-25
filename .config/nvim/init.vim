" Plugins {{{

call plug#begin('~/.local/share/nvim/plugged')

" tools
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/unite.vim'
Plug 'junegunn/goyo.vim'
Plug 'edkolev/tmuxline.vim'

" Status
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Programming

" syntax
Plug 'PotatoesMaster/i3-vim-syntax'

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'endel/vim-github-colorscheme'
Plug 'sjl/badwolf'
Plug 'twerth/ir_black'

call plug#end()

" }}}

" Basic Settings {{{

syntax enable
set mouse=a
set laststatus=2
set noshowmode
set nu
filetype on
filetype plugin indent on
set ruler
set cursorline
set noswapfile
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set showbreak=↪
set wrap
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitright
set splitbelow
"set wildmode=longest,list,full
"set wildmenu
"set termguicolors
" scoll in middle
"set so=99
" Save when losing focus
"au FocusLost * :silent! wall
" Remember cursor position between vim sessions
 autocmd BufReadPost *
             \ if line("'\"") > 0 && line ("'\"") <= line("$") |
             \   exe "normal! g'\"" |
             \ endif
             " center buffer around cursor when opening files
autocmd BufRead * normal zz

" }}}

" Plugin Settings {{{

" ============== AIRLINE ========================
" Statusline and Tabline
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

" ========= NERDTree ==================
" Autostart NERDTree
"au VimEnter *  NERDTree
" Config
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=50

" Toggle
nmap <F2> :NERDTreeToggle<CR>

" Close NERDTree with vim
function! s:CloseIfOnlyControlWinLeft()
  if winnr("$") != 1
    return
  endif
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        \ || &buftype == 'quickfix'
    q
  endif
endfunction
augroup CloseIfOnlyControlWinLeft
  au!
  au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END

" ====================== CTRL-P ===========================
let g:cctrlp_show_hidden = 1

" =================== GOYO ==================================
" Goyo plugin makes text more readable when writing prose:
map <F10> :Goyo<CR>
inoremap <F10> <esc>:Goyo<CR>a


" }}}

" Colorscheme {{{

set background=dark
colorscheme badwolf

" }}}

" Keybindings {{{

" change leader key
let mapleader = ","

" leader-s to save
nnoremap <leader>s :w<cr>
" leader-q to quit/ DOES NOT SAVE
nnoremap <leader>q :q!<cr>
" leader-x to save/quit
nnoremap <leader>x :x<cr>
" exit insert, dd line, enter insert
inoremap <c-d> <esc>ddi
" Spell-check set to F6:
map <F6> :setlocal spell! spelllang=en_us,es<CR>
" vim-plug
nnoremap <leader>i :PlugInstall<cr>
nnoremap <leader>c :PlugClean<cr>
" tabs
nnoremap <leader>n :tabnew<cr>
nnoremap <leader>d :tabnext<cr>
nnoremap <leader>a :tabprev<cr>
" Navigate between display lines
  nnoremap <silent><expr> k      v:count == 0 ? 'gk' : 'k'
  nnoremap <silent><expr> j      v:count == 0 ? 'gj' : 'j'
  nnoremap <silent><expr> <Up>   v:count == 0 ? 'gk' : 'k'
  nnoremap <silent><expr> <Down> v:count == 0 ? 'gj' : 'j'
noremap H ^
noremap L g_
noremap J 5j
noremap K 5k
" give it a try and you will like it
  nnoremap ; :
" File Completion
  inoremap <c-f> <c-x><c-f>
" Commenting
	" space-1 insert "!" commenting
		nnoremap <leader>1 :norm i!<cr>
		vnoremap <leader>1 :norm i!<cr>

	" space-' insert """ commenting
		nnoremap <leader>' :norm i"<cr>
		vnoremap <leader>' :norm i"<cr>

	" space-3 insert "#" commenting
		nnoremap <leader>3 :norm i#<cr>
		vnoremap <leader>3 :norm i#<cr>

	" space-- insert "--" commenting
		nnoremap <leader>- :norm i--<cr>
		vnoremap <leader>- :norm i--<cr>

	" space-6 uncomment
		nnoremap <leader>6 :norm ^x<cr>
		vnoremap <leader>6 :norm ^x<cr>

	" edit config files
nnoremap <leader>eb :vsplit ~/git/dotfiles/.bashrc<cr>
nnoremap <leader>ep :vsplit ~/git/dotfiles/.config/polybar/config<cr>
nnoremap <leader>et :vsplit ~/git/dotfiles/.tmux.conf<cr>
nnoremap <leader>ev :vsplit ~/git/dotfiles/.config/nvim/init.vim<cr>
" Reload vimrc
	nnoremap <leader>rv :source<Space>$MYVIMRC<cr>

" Convenience
	nmap G Gzz
	nmap n nzz
	nmap N Nzz
" Quick pairs
	imap <leader>' ''<ESC>i
	imap <leader>" ""<ESC>i
	imap <leader>( ()<ESC>i
	imap <leader>[ {}<ESC>i
" }}}

" Vim Folding {{{

augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_vim
	autocmd!
	autocmd FileType i3 setlocal foldmethod=marker
augroup END

nnoremap <space> za
nnoremap <leader>z zMzvzz

" }}}
