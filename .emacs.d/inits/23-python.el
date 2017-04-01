;;インデントカラー追加
(require 'highlight-indentation)
(set-face-background 'highlight-indentation-face "#469134")
(set-face-background 'highlight-indentation-current-column-face "#777777")
(add-hook 'elpy-mode-hook 'highlight-indentation-current-column-mode)

;; ;;python-modeの追加
;; (require 'python-mode)

;; ;;jediに必要なもの？
;; (require 'epc)
;; (require 'auto-complete-config)
;; ;(require 'python)

;; ;;jediの追加
;; (setenv "PYTHONPATH" "~/.pyenv/versions/")
;; (require 'jedi)
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)

;; ;;pyflakesの追加
;; (require 'pyflakes)
;; (flymake-mode t)
;; (require 'flymake-python-pyflakes)
;; (flymake-python-pyflakes-load)

;; ;;yasnippet
;; (require 'yasnippet)

;;Elpyを有効化
(elpy-enable)
;;使用するAnacondaの仮想環境を設定
(defvar venv-default "~/.pyenv/versions/anaconda3-4.2.0")
;;デフォルト環境を有効化
(pyvenv-activate venv-default)
;;REPL環境にIPyhonを使う
(elpy-use-ipython "ipython3")
;;自動補完のバックエンドとして，Rope or Jedi
(setq elpy-rpc-backend "jedi")

(setq python-shell-interpreter "ipython3" python-shell-interpreter-args "--simple-prompt --pprint")
