"{vundle setup
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim
  "vim-go | go settings `go get -u github.com/golang/lint`
  set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
  call vundle#begin()
  "{plugins
    Plugin 'arcticicestudio/nord-vim'
    Plugin 'gmarik/Vundle.vim'
    Plugin 'FelikZ/ctrlp-py-matcher'
    Plugin 'Raimondi/delimitMate'
    Plugin 'Shougo/neocomplete.vim'
    Plugin 'Shougo/unite.vim'
    Plugin 'Shougo/vimproc.vim'
    Plugin 'Shougo/deoplete.nvim'
    Plugin 'Valloric/MatchTagAlways'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'bling/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'bufexplorer.zip'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'dhruvasagar/vim-vinegar'
    Plugin 'docunext/closetag.vim'
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'einars/js-beautify'
    Plugin 'godlygeek/tabular'
    Plugin 'groenewege/vim-less'
    Plugin 'itchyny/calendar.vim'
    Plugin 'jaxbot/semantic-highlight.vim'
    Plugin 'jaxbot/syntastic-react'
  "}
  call vundle#end()
"}

"{Basic settings
  set nospell
  set nu
  set relativenumber
  set ffs=unix,dos,mac
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase
  set encoding=utf-8
  set termencoding=utf-8
  set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
  set fileformats=unix,dos,mac
  set linespace=0             " No extra spaces between rows
  set showmatch               " Show matching brackets/parenthesis
  set cursorline

  "{Mappings
  noremap t j
  noremap n k
  noremap s l
  noremap j t
  noremap k n
  noremap l s
  noremap T J
  noremap N k
  noremap S L
  noremap J T
  noremap K N
  noremap L S
  noremap ( ^
  noremap ) $
  noremap ^ (
  noremap $ )

set rtp+=/opt/homebrew/opt/fzf
colorscheme nord
