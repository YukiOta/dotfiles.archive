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
nnoremap <Leader><Tab> <C-w>w

" 検索によるハイライトを解除する
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
