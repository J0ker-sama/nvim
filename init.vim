" vim-plug PluginManager
call plug#begin('~/.local/share/nvim/plugged')


" jedi-vim: shows definition of classes and methods implementation details 
Plug 'davidhalter/jedi-vim'

" deoplete: enables function of auto-complete for nvim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" deoplete-jedi: enables auto-complete functionality for Python3
Plug 'zchee/deoplete-jedi'

" vim-airline: status bar for nvim
Plug 'vim-airline/vim-airline'

" vim-airline-themes: customizes status bar for vim
Plug 'vim-airline/vim-airline-themes'

" auto-pairs: always inputs brackets and quotes as pairs () ""
Plug 'jiangmiao/auto-pairs'

" neoformat: auto-format source code
Plug 'sbdchd/neoformat'

" nerdtree: file system explorer 
Plug 'preservim/nerdtree'

" neomake: code syntax check
Plug 'neomake/neomake'

" new
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'

" call ':PlugInstall" in CommandMode to install new plugins
call plug#end()

" basics
syntax enable
syntax on
set number
set relativenumber " new 
set incsearch " new
set encoding=utf-8

" shortcuts
nmap <C-n> :NERDTreeToggle<CR>

let g:deoplete#enable_at_startup = 1

let g:airline_theme='solarized'

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

let g:neomake_python_enabled_makers = ['pylint']

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
