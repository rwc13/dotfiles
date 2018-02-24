call plug#begin('~/.local/share/nvim/plugged')

" tools
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/unite.vim'
Plug 'mhinz/vim-startify'

" syntax
Plug 'PotatoesMaster/i3-vim-syntax'  

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'

call plug#end()

" Basic Settings
syntax enable
set mouse=a
set laststatus=2
set noshowmode
set nu
set ruler
set cursorline
set noswapfile

" Colorscheme
set background=dark
colorscheme molokai 

" Statusline and Tabline
let g:lightline = {
      \ 'colorscheme': 'molokai',
      \ }
set showtabline=2

" Autostart NERDTree
au VimEnter *  NERDTree
" Config
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=50
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

" CTRL-P Config
let g:cctrlp_show_hidden = 1

" KEY CHANGES
" change leader key
let mapleader = ","
nmap <leader>o :NERDTree<cr>
nmap <F2> :NERDTreeFocus<CR>
" leader-s to save
nnoremap <leader>s :w<cr>
" leader-q to quit/ DOES NOT SAVE
nnoremap <leader>q :q!<cr>
" lader-x to save/quit
nnoremap <leader>x :x<cr>
" vim-plug
nnoremap <leader>i :PlugInstall<cr>
nnoremap <leader>c :PlugClean<cr>
" tabs
nnoremap <leader>n :tabnew<cr>
nnoremap <leader>d :tabnext<cr>
nnoremap <leader>a :tabprev<cr>
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
		nnoremap <leader>eb :tabnew ~/git/dotfiles/.bashrc<cr>
		nnoremap <leader>ev :tabnew ~/.config/nvim/init.vim<cr>
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



