syntax on
colorscheme ir_black

set nocompatible              " be iMproved, required
set number
filetype off                  " required

so ~/.vim/plugins.vim

" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1

" vim-pencil
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,md call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
