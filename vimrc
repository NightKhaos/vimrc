" NightKhaos VIMRC File

" Load Pathogen Plugins
execute pathogen#infect()

" Look and feel modifications
syntax on
set ruler
set number
set guifont=Monaco:h12
set showcmd
syntax on
set list listchars=tab:→\ ,trail:·
colorscheme desert
set background=dark
set wildmenu
set linebreak

" Helpful Indention and Tabs Configuration
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Case/Grammer/Spelling
set ignorecase
set smartcase
set spell spelllang=en_au

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
