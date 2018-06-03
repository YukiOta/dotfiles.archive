" Myautocmdの初期化
augroup MyAutoCmd
	autocmd!
augroup END

" neovim
if has('nvim')
	set runtimepath^=~/dotfiles/vim
	let &packpath = &runtimepath
endif

" basics
runtime! sets.vim

" key mappings
runtime! keymaps.vim

" language-specific settings
" runtime! filetype.vim

" list of plugins
runtime! plugins.vim

" plugin-specific settings
" runtime! plugins/*.vim

" colorscheme
" ----------
if (has("nvim"))
	"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
	"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
	" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
	if (has("termguicolors"))
	set termguicolors
endif

let g:airline_powerline_font = 1
let g:airline#extensions#tabline#enable = 1
let g:airline_theme='onedark'
colorscheme one
set background=dark
syntax on

" ファイルタイプが正しく特定されないので追加
augroup mydetect
    autocmd!
augroup END
autocmd mydetect BufRead,BufNewFile *.html setlocal filetype=html
autocmd mydetect BufRead,BufNewFile *.ejs setlocal filetype=html
au BufRead,BufNewFile *.ejs set filetype=html
