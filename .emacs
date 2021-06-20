;; 加载 lisp
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))
(require 'init-startup)
(require 'init-elpa)
(require 'init-packages)
(require 'init-theme)
(require 'init-lisp)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6c386d159853b0ee6695b45e64f598ed45bd67c47f671f69100817d7db64724d" default)))
 '(package-selected-packages
   (quote
    (doom-modeline zenburn-theme use-package smart-mode-line restart-emacs doom-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
