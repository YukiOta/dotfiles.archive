# alias
case ${OSTYPE} in
  darwin*)
	alias ls='ls -AGFt'
    ;;
  freebsd*)
	alias ls='ls -AGFt'
    ;;
  linux*)
	eval "$(dircolors -b)"
	alias ls='ls --color=auto -AGFt'
    ;;
esac
# alias ls='ls -aF'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -iv'
alias mv='mv -iv'
alias vi='nvim'
alias vim='nvim'
alias cat='cat -n'
alias less='less -NM'
alias smi='nvidia-smi'

# original
alias sshw="ssh yukiota@murata.eb.waseda.ac.jp"
alias jupyterqt='jupyter qtconsole --style=monokai --ConsoleWidget.font_family="Ricty" --ConsoleWidget.font_size=12'


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
