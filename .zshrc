ZSH_HOME=~/dotfiles/zsh/
if [ "$(uname)" = "Darwin" ]; then
  source ${ZSH_HOME}darwin.zsh
else
  # source ${ZSH_HOME}linux.zsh
  source ${ZSH_HOME}cuda.zsh
fi

source ${ZSH_HOME}zplug.zsh
source ${ZSH_HOME}aliases.zsh
source ${ZSH_HOME}set_option.zsh
source ${ZSH_HOME}python.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

