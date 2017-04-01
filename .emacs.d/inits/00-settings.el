;;<C-RET>で矩形選択
;;(cua-mode t)
;;(setq cua-enable-cua-keys nil)

;;タイトルバーにフルパスの表示
(setq frame-title-format
      (format "%%f - Emacs@%s"(system-name)))

;;初期表示位置，サイズ
(setq initial-frame-alist
      '((left . 523)
	(top . 50)
	(width . 100)
	(height . 50)
      ))

;;閉じかっこの自動挿入
(electric-pair-mode 1)

;;スタートアップメッセージの非表示
(setq inhibit-startup-message t)

;;
;;backupファイルオープン時のバックアップ
;;
;;バックアップファイルを作成する
(setq make-backup-files nil)
;;格納ディレクトリーの変更
;;(対象ディレクトリ . 格納ディレクトリ)のリスト
(setq backup-directory-alist '((".*" . "~/.ehist")))
;;番号付けによる複数保存
(setq version-control t) ;;実行の有無
(setq kept-new-versions 5) ;;最新の保持数
(setq kept-old-versions 1) ;;最古の保持数
(setq delete-old-versions t) ;;範囲外を削除

;;
;;auto-save　自動保存ファイル
;;

;;終了時にオートセーブファイルを削除する
(setq delete-auto-save-files t)

;;タブにスペースを使用する
;(setq-default tab-width 4 indent-tabs-mode nil)

;;改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;;メニューバーを消す
(menu-bar-mode -1)

;;ツールバーを消す
(tool-bar-mode -1)

;;列数，行数を表示する
;(column-number-mode t)
(global-linum-mode t)

;;カーソル行をハイライトする
(global-hl-line-mode t)

;;対応するかっこを光らせる
(show-paren-mode 1)

;;ウィンドウ内に治まらない時だけ，かっこ内も光らせる
;(setq show-paren-style 'mixed)
;(set-face-background 'show-paren-match-face "grey")
;(set-face-background 'show-paren-match-face "black")

;;スペース，タブなどを可視化する
;;(global-whitespace-mode 1)

;;スクロールは1行ごと
(setq scroll-conservatively 1)

;;C-kで行全体を削除
(setq kill-whole-line t)
;;選択領域を削除キーで一括削除
(delete-selection-mode t)
;;読み取り専用バッファーでもカット系でコピペ可能
(setq kill-read-only-ok t)

;; "yes or no"の選択を"y or n"にする
(fset 'yes-or-no-p 'y-or-n-p)

;;beep音を消す
;(defun my-bell-function()
;  (unless (memq this-command
;                '(isearch-abort abort-recursive-edit exit-minibuffer
;                                keyboard-quit mwheel-scroll down up next-line previous-line backward-char forward-char))
;    (ding)))
;(setq ring-bell-function 'my-bell-function)
(setq ring-bell-function 'ignore)

;;macのキーバインドを使う
;;(mac-key-mode 1)

;;Macのopitonをメタキーにする
(setq mac-option-modifier 'meta)

;;C-hをBackspaceとして使う
;;C-c hをhelpに割りあてる
(keyboard-translate ?\C-h ?\C-?)
(global-set-key "\C-h" nil)
(global-set-key "\C-ch" 'help-command)

;;指定行にジャンプする
(global-set-key "\C-xj" 'goto-line)

;;C-x C-lで現在の行をトップにする
;;もともとはC-u 0 C-l
;;ちなみにC-lは現在行をcenterにする
(defun line-to-top-of-window()
  "Move the line point is on ot top of window."
  (interactive)
  (recenter 0))
(global-set-key "\C-x\C-l" 'line-to-top-of-window)

;;カスタマイズ用のファイルを設定
(setq custom-file "~/.emacs.d/custom_settings.el")
;;カスタマイズ用のファイルをロード
(load custom-file t)

