syntax on
colorscheme ir_black

set nocompatible              " be iMproved, required
set number
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'chr4/nginx.vim' " syntax highlighting for nginx
Plugin 'powerline/powerline'
Plugin 'godlygeek/tabular' " required for vim-markdown
Plugin 'csexton/trailertrash.vim' " highlight trailing whitespace
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown' " syntax highlighting and commands for markdown
Plugin 'reedes/vim-pencil'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'

call vundle#end()

filetype plugin indent on  " required


" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1

" vim-pencil
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,md call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
