;;インデントカラー追加
(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation-current-column-mode)
(set-face-background 'highlight-indentation-face "#469134")

;;python-modeの追加
(require 'python-mode)

;;jediに必要なもの？
(require 'epc)
(require 'auto-complete-config)
;(require 'python)

;;jediの追加
(setenv "PYTHONPATH" "~/.pyenv/versions/")
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;;pyflakesの追加
(require 'pyflakes)
(flymake-mode t)
(require 'flymake-python-pyflakes)
(flymake-python-pyflakes-load)

;;yasnippet
(require 'yasnippet)





