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
set clipboard=unnamed

"In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

"auto cursol move
set whichwrap=b,s,h,l,<,>,[,]
