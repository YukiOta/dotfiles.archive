;;
;;undo-tree
;;
;;undo-treeを読み込む
(require 'undo-tree)
;;undo-treeを起動時に有効にする
(global-undo-tree-mode t)
;;M-/をredoに設定する
(global-set-key (kbd "M-/") 'undo-tree-redo)

