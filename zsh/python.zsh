# ----------
# virtualenv
# ----------
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
        export WORKON_HOME=$HOME/.virtualenvs
        source /usr/local/bin/virtualenvwrapper.sh
fi

# ----------
# pyenv
# ----------
export PYENV_ROOT="$HOME/.pyenv"
if [ -d ${PYENV_ROOT} ]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  if [ -d ${PYENV_ROOT}/plugins/pyenv-virtualenv ]; then
    eval "$(pyenv virtualenv-init -)"
  fi
fi

#anacondaをpyenvで管理する時に書いたalias
# alias activate="source $PYENV_ROOT/versions/anaconda3-4.2.0/bin/activate"

# if [ "$(uname)" = "Darwin" ]; then
#   pyenv activate mac
# else
#   pyenv activate ubuntu
# fi
