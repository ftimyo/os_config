set nocompatible
"set textwidth=79
set colorcolumn=+1
set nu
highlight ColorColumn ctermbg=0 guibg=lightgrey
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set hls
set autoindent
set smartindent
set smarttab

syntax on

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

