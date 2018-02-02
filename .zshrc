

# zplug{{{

# zplugの設定
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# pluginの定義
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-completions"
zplug "mollifier/anyframe"

# 未インストール項目をインストール
if ! zplug check --verbose; then
	printf "Install? [y/N]:::: "
	if read -q; then
		echo; zplug install
	fi
fi

zplug load # --verbose
# }}}

# 環境変数{{{
# 文字コードの設定
export LANG=ja_JP.UTF-8

#ヒストリーの管理
export HISTFILE=$HOME/.zsh-history
export HISTSIZE=1000
export SAVEHIST=100000

# editorの設定
export EDITOR=nvim

#パッケージコンフィグのpath
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/Cellar/opencv/2.4.13.1/lib/pkgconfig
export PKG_CONFIG_PATH

#PATHのおまじない
export PATH="/usr/local/bin:/opt/local/bin:/home/lab/urasam/bin:/usr/bin:/usr/X11R6/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:/opt/local/bin:/home/lab/urasam/bin:/usr/X11R6/bin"

#VLFeatのPATH
export VLFEATROOT=$HOME/src/vlfeat-0.9.20
export PATH=$VLFEATROOT/bin/maci64:$PATH

#MySQL
export PATH=$PATH:/Applications/MAMP/Library/bin

# blender
export PATH=$PATH:/Applications/blender-2.79-macOS-10.6/blender.app/Contents/MacOS/blender/
# }}}

#virtualenvwrapper --- virtualenvの仮想環境をworkonで管理{{{
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
	export WORKON_HOME=~/.virtualenvs
	source /usr/local/bin/virtualenvwrapper.sh
fi
# }}}

#{{{ Python関連

PYENV_ROOT=~/.pyenv
export PATH=$PATH:$PYENV_ROOT/bin
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
	export PATH=${PYENV_ROOT}/bin:$PATH
	eval "$(pyenv init -)"
fi

#anacondaをpyenvで管理する時に書いたalias
alias activate="source $PYENV_ROOT/versions/anaconda3-4.2.0/bin/activate"

# }}}

#基本設定#{{{

#
# general setting
#

## コアダンプサイズを制限
limit coredumpsize 102400
## 色を使う
setopt prompt_subst
## ビープを鳴らさない
setopt nobeep
## 補完候補を一覧表示
setopt auto_list
## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
## TAB で順に補完候補を切り替える
setopt auto_menu
## zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history
## --prefix=/usr などの = 以降も補完
setopt magic_equal_subst
## ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify
# ファイル名の展開で辞書順ではなく数値的にソート
setopt numeric_glob_sort
## ヒストリを共有
setopt share_history
## ディレクトリ名だけで cd
setopt auto_cd
## カッコの対応などを自動的に補完
setopt auto_param_keys
## ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
## スペルチェック
setopt correct
# 補完候補のメニュー選択で、矢印キーの代わりにhjklで移動出来るようにする。
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
#補完リストが多いときに尋ねない
LISTMAX=1000
#補完対象のファイルの末尾に識別マークをつける
setopt LIST_TYPES
#C-Uで行頭まで削除
bindkey "^U" backward-kill-line
# 履歴中の重複行を全て削除する
setopt hist_ignore_all_dups
# 直前と重複するコマンドを記録しない
setopt hist_ignore_dups
# autoload predict-on
setopt auto_pushd
# zsh-completionsの設定
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit && compinit -u

#
# Completion (ztyle)
#

## 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1
## 補完候補の色づけ
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
## 大文字小文字を区別しない
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'
# 補完候補を ←↓↑→ で選択 (補完候補が色分け表示される)
zstyle ':completion:*:default' menu select=1
#}}}

# Start tmux on every shell login# {{{
# https://wiki.archlinux.org/index.php/Tmux#Start_tmux_on_every_shell_login
##if which tmux 2>&1 >/dev/null; then
#if not inside a tmux session, and if no session is started, start a new session
##  test -z "$TMUX" && (tmux attach || tmux new-session)
##fi
# }}}

# Look And Feel Settings# {{{
# ------------------------------
### Ls Color ###
# 色の設定
export LSCOLORS='Exfxcxdxbxegedabagacad'
# 補完時の色の設定 (lsの時の色)
export LS_COLORS='di=34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# ZLS_COLORSとは？
export ZLS_COLORS=$LS_COLORS
# lsコマンド時、自動で色がつく(ls -Gのようなもの？)
export CLICOLOR=true
# 補完候補に色を付ける
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# プロンプトに色を付ける
# autoload -U colors; colors
#gitの情報を表示
autoload -Uz vcs_info
## }}}

# alise{{{
#

alias la="ls -a"
alias ll="ls -lafg"
alias sshwaseda="ssh yukiota@murata.eb.waseda.ac.jp"
alias e="emac"
alias vi="vim"
alias jupyterqt='jupyter qtconsole --style=monokai --ConsoleWidget.font_family="Ricty" --ConsoleWidget.font_size=12'
alias blender="alias blender=/Applications/blender-2.79-macOS-10.6/blender.app/Contents/MacOS/blender"

# gitlazy
# コメントを特に指定しなければ空欄，コメントがあればコメント指定してcommit and push
gitlazy() {
	git commit --allow-empty-message -am “$*”
	git push
}

# mountの設定
mountlab(){
	netname=$(networksetup -getairportnetwork en0)
	if [ $netname = "Current Wi-Fi Network: MurataLab" ]; then
		sshfs caca:/home ~/mountpoint/home
		sshfs caca:/home/lab/yukiota ~/mountpoint/yukiota
	else
		sshfs murata.eb.waseda.ac.jp:/home ~/mountpoint/home
		sshfs murata.eb.waseda.ac.jp:/home/lab/yukiota ~/mountpoint/yukiota
	fi
}
unmountlab(){
	umount ~/mountpoint/home
	umount ~/mountpoint/yukiota
}
# }}}

# zplugの設定{{{
bindkey '^xb' anyframe-widget-cdr
bindkey '^x^b' anyframe-widget-checkout-git-branch

bindkey '^xr' anyframe-widget-execute-history
bindkey '^x^r' anyframe-widget-execute-history

bindkey '^xp' anyframe-widget-put-history
bindkey '^x^p' anyframe-widget-put-history

bindkey '^xg' anyframe-widget-cd-ghq-repository
bindkey '^x^g' anyframe-widget-cd-ghq-repository

bindkey '^xk' anyframe-widget-kill
bindkey '^x^k' anyframe-widget-kill

bindkey '^xi' anyframe-widget-insert-git-branch
bindkey '^x^i' anyframe-widget-insert-git-branch

bindkey '^xf' anyframe-widget-insert-filename
bindkey '^x^f' anyframe-widget-insert-filename
# }}}
