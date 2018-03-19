# zplugの設定
if [ "$(hostname -s)" = "YukiOta" ]; then
	export ZPLUG_HOME=/usr/local/opt/zplug
	source $ZPLUG_HOME/init.zsh
else
	export ZPLUG_HOME=~/.zplug
	source $ZPLUG_HOME/init.zsh
fi

# pluginの定義
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "mafredri/zsh-async"
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

# ----------
# anyframe
# ----------
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

zplug load # --verbose

# ----------
# zsh completion
# ----------
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit && compinit -u
