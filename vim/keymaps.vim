"個人設定(キーバインド)
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"vimrcをスペースドットで開く
nnoremap <space>. :<c-u>tabedit $MYVIMRC<CR>
"INSERT中に，素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
"spaceを<Leader>キーにする
let mapleader = "\<space>"
let maplocalleader = "."
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

" 分割
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>

" ウィンドウの移動に関するキーバインド
nnoremap <Leader><Tab> <C-w>w
nnoremap s <Nop>
nnoremap sw <C-w>w
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=

" バッファの操作
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap sQ :<C-u>bd<CR>

" 新しいタブの作成
nnoremap st :<C-u>tabnew<CR>

" 検索によるハイライトを解除する
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
