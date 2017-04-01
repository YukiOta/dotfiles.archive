
;;背景色変更
;(set-face-background 'default "black")
;(set-face-foreground 'default "white")

;;テーマの設定
(require 'solarized)
(deftheme solarized-dark "solarized dark")
(load-theme 'solarized-dark t)
(enable-theme 'solarized-dark)

;;ウィンドウを透明にする
;;アクティブ/非アクティブ alphaの値が透明度
(add-to-list 'default-frame-alist '(alpha . (0.95 0.95)))

;;powerlineの導入
(require 'powerline)
(set-face-attribute 'mode-line nil
                    :foreground "#fff"
                    :background "#FF0066"
                    :box nil)

(set-face-attribute 'powerline-active1 nil
                    :foreground "#fff"
                    :background "#FF6699"
                    :inherit 'mode-line)

(set-face-attribute 'powerline-active2 nil
                    :foreground "#000"
                    :background "#ffaeb9"
                    :inherit 'mode-line)

(powerline-default-theme)
