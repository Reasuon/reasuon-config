;;;; 配置

;;; 自动生成配置
;; 将自动生成的配置存入指定文件
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;;; 加载 lisp
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))
(require 'init-startup)
(require 'init-elpa)
(require 'init-packages)
(require 'init-theme)
(require 'init-lisp)
(require 'init-orgmode)
(require 'init-mediawiki)
