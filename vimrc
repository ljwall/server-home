runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

syntax on
set number
set nowrap

set background=dark
colorscheme solarized

vnoremap . :norm.<CR>

set softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab
set scrolloff=3

filetype plugin indent on
set encoding=utf-8

" Auto close { and [ if immediatly followed by <CR>
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko

inoremap <c-c> <esc>

" Window moving
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

augroup phpsettings
	autocmd!
	autocmd FileType php inoremap <c-d> ->
augroup END

augroup netrw_mapping
	autocmd!
	autocmd BufNewFile,BufRead,filetype * call SetToggleKey()
augroup END

function! SetToggleKey()
	if &ft == 'netrw'
		noremap <buffer> <C-\> :Rexplore<cr>
	else
		noremap <buffer> <C-\> :Explore<cr>
	endif
endfunction

" Don't use the arrrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Settings for CtrlP
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
set wildignore+=*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename=1
let g:ctrlp_regexp=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_lazy_update=1
let g:ctrlp_match_window = 'max:25'

