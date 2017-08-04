"個人設定(キーバインド)
"vimrcをスペースドットで開く
nnoremap <space>. :<c-u>tabedit $MYVIMRC<CR>
"INSERT中に，素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
"spaceを<Leader>キーにする
let mapleader = "\<space>"
" 表示行で移動する
noremap j gj
noremap k gk

"移動する
noremap <Leader>h ^
noremap <Leader>l $
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>t gt
nnoremap <Leader>T gT
nnoremap <Leader><Tab> <C-w>w

" 検索によるハイライトを解除する
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>


" mode line
set modeline
set wildmenu
set wildmode=list:longest,full
set showtabline=2
set foldmethod=marker
set laststatus=2
set t_Co=256
set nocompatible

" ヒストリーの設定
set history=1000

" 行番号の表示
set nu

" 右下に表示される行・列の番号を表示
set ruler
set colorcolumn=80
set cursorline

" スワップファイルを作らあい
set noswapfile

" 入力中のコマンドをひょうじする
set showcmd

" 自動インデントを有効にする
set autoindent
set autoread

"C言語スタイルのインデントを自動で入れる
set cindent

" タブを表示する時の幅
set tabstop=4

" 自動で挿入されるインデントの幅
set shiftwidth=4

" タブ入力時の幅を4に設定
set softtabstop=4

" 閉じ括弧入力時に対応する括弧の強調
set showmatch

" showmatch設定の表示秒数(0.1秒単位)
set matchtime=4

" インクリメンタルサーチを行う(検索文字入力中から検索)
set incsearch

" 文字列検索で大文字小文字を区別しない
set ignorecase

" 文字列検索でマッチするものをハイライト表示する
set hlsearch

" 検索文字に大文字が含まれる場合にignorecaseをOFFにする(大文字小文字を区別する)
set smartcase

" 改行入力業の末尾にあわせてインデントを増減
set smartindent

" Deleteキーを有効にする
set t_kD=^?

" バックスペースキーの動作を普通のテキストエディタと同じようにする
set backspace=indent,eol,start

" 見た目によるカーソル移動をする(1行が複数行に渡って表示されている時に表示上の行ごとに上下移動させる)
nnoremap j gj
nnoremap k gk

" シンタックスを有効にする(コードをカラーを付けて見やすくする)
syntax enable

" エンコーディングをutf8に設定
set encoding=utf8

" ファイルエンコードをutf8に設定
set fileencodings=utf-8,sjis,iso-2022-jp,euc-jp

" 編集中のファイル名を表示
set title

" ウィンドウの幅より長い行は折り返して表示
set wrap
set wrapscan

"バッファをクリップボードにコピー(for OSX)
set clipboard=unnamed,autoselect

" release autogroup in MyAutoCmd
augroup MyAutoCmd
  autocmd!
augroup END

"In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

"auto cursol move
set whichwrap=b,s,h,l,<,>,[,]


inoremap <C-f> <Esc>

" dein.vimのもろもろはここから"{{{


" Vim起動完了時にインストール
augroup PluginInstall
  autocmd!
  autocmd VimEnter * if dein#check_install() | call dein#install() | endif
augroup END

" プラグインが実際にインストールされているディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

let g:dein#install_progress_type = 'title'
let g:dein#install_message_type = 'none'
let g:dein#enable_notification = 1

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(expand(s:dein_dir))
  call dein#load_toml('~/.vim/rc/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.vim/rc/dein_lazy.toml', {'lazy' : 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

"これを書かないと毎回読んでくれないのかな…？
" Required:
filetype plugin indent on

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

"dein.vimのもろもろはここまで
"}}}

