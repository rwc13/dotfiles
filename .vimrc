call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'JamshedVesuna/vim-markdown-preview'

call plug#end()

set nu
set ruler
set mouse=a
set laststatus=2
set cursorline
set noshowmode

syntax enable
set background=dark
colorscheme solarized

" Spell-check set to F6:
	map <F6> :setlocal spell! spelllang=en_us,es<CR>

" rmarkdown
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

" lightline
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" nerdtree
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0

" ctrl-p
let g:cctrlp_show_hidden = 1

" markdown preview
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_toggle=1
let vim_markdown_preview_browser='Google Chrome'

" =========== KEYBINDINGS ==========
" change leader key
let mapleader = ","

" NERDTree
nmap <leader>o :NERDTreeFocus<cr>
nmap <F2> :NERDTreeToggle<CR>

" leader-s to save
nnoremap <leader>s :w<cr>
" leader-q to quit/ DOES NOT SAVE
nnoremap <leader>q :q!<cr>
" lader-x to save/quit
nnoremap <leader>x :x<cr>
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
		nnoremap <leader>ez :tabnew ~/.zshrc<cr>
		nnoremap <leader>ev :tabnew $MYVIMRC<cr>
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

