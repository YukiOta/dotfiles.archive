# ----------
# ls
# ----------
export LSCOLORS=Exfxcxdxbxegedabagacad
# export LSCOLORS=cxfxcxdxbxegedabagacad
# export LANG=ja_JP.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# 補完時の色の設定
export LS_COLORS='di=34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# ZLS_COLORSとは？
export ZLS_COLORS=$LS_COLORS
# lsコマンド時、自動で色がつく(ls -Gのようなもの？)
export CLICOLOR=true

# ----------
# completion
# ----------
autoload -Uz compinit; compinit -C
zmodload zsh/complist
setopt correct
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:default' menu select=2

# ----------
# history
# ----------
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
LISTMAX=1000
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
# 履歴中の重複行を全て削除する
setopt hist_ignore_all_dups
# 直前と重複するコマンドを記録しない
setopt hist_ignore_dups
# autoload predict-on
setopt auto_pushd
# setopt hist_ignore_dups
# setopt share_history
# setopt auto_pushd
# setopt pushd_ignore_dups
# setopt auto_pushd
# setopt pushd_ignore_dups

# ----------
# tmux
# ----------
function is_screen_running() { [ ! -z "$STY" ]; }
function is_tmux_runnning() { [ ! -z "$TMUX" ]; }
if is_tmux_runnning; then
  echo "${fg_bold[red]}    _____ __  __ _   ___  __ ${reset_color}"
  echo "${fg_bold[orange]}   |_   _|  \/  | | | \ \/ / ${reset_color}"
  echo "${fg_bold[yellow]}     | | | |\/| | | | |\  /  ${reset_color}"
  echo "${fg_bold[green]}     | | | |  | | |_| |/  \  ${reset_color}"
  echo "${fg_bold[blue]}     |_| |_|  |_|\___//_/\_\ ${reset_color}"
elif is_screen_running; then
  echo "This is on screen."
fi
