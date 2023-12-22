let mapleader=","

"{ 旧的设置
set nospell
set ffs=unix,dos,mac
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set fileformats=unix,dos,mac
set linespace=0             " No extra spaces between rows
set showmatch               " Show matching brackets/parenthesis
set cursorline
"}

set hlsearch
set incsearch
set ignorecase
set smartcase
set showmode
set number relativenumber
set scrolloff=3
" set history=1000
set clipboard=unnamed

" 映射keys
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

inoremap <C-b> <Left>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-f> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>

" 清除高亮
nnoremap <Leader>sc :nohlsearch<CR>

" 保存关闭
nnoremap <Leader>q  :wq<CR>
nnoremap <Leader>Q  :wqa<CR>

" 以上是自定义快捷键-----------------

" 关于窗口操作 (right: {c:关闭, j k h l: 移动方向, - v: 自下创建, 自右创建})
nnoremap <C-W>w <C-W>w
nnoremap <C-W>c <C-W>c
nnoremap <C-W>t <C-W>j
nnoremap <C-W>n <C-W>k
nnoremap <C-W>h <C-W>h
nnoremap <C-W>s <C-W>l
nnoremap <C-W>- <C-W>s
nnoremap <C-W>v <C-W>v

"{vundle setup
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim
  " vim-go | go settings `go get -u github.com/golang/lint`
  set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
  call vundle#begin()
  "{plugins
    " Plugin 'prabirshrestha/vim-lsp'
    " Plugin 'mattn/vim-lsp-settings'
    " Plugin 'neoclide/coc.nvim', {'branch': 'release'}
    Plugin 'sainnhe/everforest'
    Plugin 'dylanaraps/ryuuko'
    Plugin 'arcticicestudio/nord-vim'
    Plugin 'VincentCordobes/vim-translate'
    Plugin 'gmarik/Vundle.vim'
    Plugin 'FelikZ/ctrlp-py-matcher'
    Plugin 'Raimondi/delimitMate'
    Plugin 'Shougo/neocomplete.vim'
    Plugin 'Shougo/unite.vim'
    Plugin 'Shougo/vimproc.vim'
    Plugin 'Shougo/deoplete.nvim'
    " Plugin 'Valloric/MatchTagAlways'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    " Plugin 'airblade/vim-gitgutter'
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
    " Plugin 'Valloric/YouCompleteMe'
  "}
  call vundle#end()
"}

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

set rtp+=/opt/homebrew/opt/fzf
colorscheme nord
" colorscheme ryuuko
