;; 加载 lisp
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))
(require 'init-startup)
(require 'init-elpa)
(require 'init-packages)
(require 'init-theme)
(require 'init-lisp)

(require 'init-orgmode)