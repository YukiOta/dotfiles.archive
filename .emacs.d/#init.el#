;; ~/.emacs.d/site-lisp以下全部読み込み



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
 (add-to-list 'load-path default-directory)
 (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
     (normal-top-level-add-subdirs-to-load-path)))

(require 'init-loader)
(setq init-load-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
(setq init-load-show-log-after-init t)
