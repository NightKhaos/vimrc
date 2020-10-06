" NightKhaos VIMRC File

" Test Encoding: "♥"
" Encoding Settings
set enc=utf-8
set fileencoding=utf-8 
set fileencodings=ucs-bom,utf-8,prc
set guifont=Roboto\ Mono\ Light\ for\ Powerline:h13
scriptencoding utf-8

" Vundle Settings
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Install plugins
Plugin 'inkarkat/vim-ingo-library'
Plugin 'vim-scripts/SyntaxRange'
Plugin 'Raimondi/delimitMate'
Plugin 'Ron89/thesaurus_query.vim'
Plugin 'rhysd/vim-grammarous'
Plugin 'elzr/vim-json'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
if has('python3') || has('python3/dyn')
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'ycm-core/YouCompleteMe'
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Look and feel modifications
syntax on
set ruler
set number
set showcmd
syntax on
set list listchars=tab:→\ ,trail:·
colorscheme desert
set background=dark
set wildmenu
set linebreak
set laststatus=2
set t_Co=256
let g:Powerline_symbols = "fancy"
set shortmess=a
set cmdheight=2

" Helpful Indention and Tabs Configuration
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

" Case/Grammer/Spelling
set ignorecase
set smartcase
set spell spelllang=en_au

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" vim-json Configuration
let g:vim_json_syntax_conceal = 0

" Fix Mac backspace issue
set backspace=indent,eol,start

" Fixing spelling highlight
function s:SetSpellHightlight()
    hi SpellBad ctermbg=52
endfunction
autocmd VimEnter * call s:SetSpellHightlight()

" Grammarous config
let g:grammarous#hooks = {}
let g:grammarous#languagetool_cmd = 'languagetool'

" Buffer specific configuration
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


" SimplylFold config
let g:SimpylFold_docstring_preview=1

" YCM Config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Python Specific Configuration
""" python with virtualenv support
if has('python3') || has('python3/dyn')
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
endif

let python_highlight_all=1
