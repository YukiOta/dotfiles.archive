ZSH_HOME=~/dotfiles/zsh/
if [ "$(uname)" = "Darwin" ]; then
  source ${ZSH_HOME}darwin.zsh
else
  # source ${ZSH_HOME}linux.zsh
  source ${ZSH_HOME}cuda.zsh
fi

source ${ZSH_HOME}zplug.zsh
source ${ZSH_HOME}set_option.zsh
source ${ZSH_HOME}python.zsh
source ${ZSH_HOME}aliases.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/YukiOta/.nodebrew/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/YukiOta/.nodebrew/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/YukiOta/.nodebrew/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/YukiOta/.nodebrew/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# added by travis gem
[ -f /Users/YukiOta/.travis/travis.sh ] && source /Users/YukiOta/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/YukiOta/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/YukiOta/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/YukiOta/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/YukiOta/google-cloud-sdk/completion.zsh.inc'; fi
