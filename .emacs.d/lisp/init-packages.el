;;;; 插件配置
;; 快速重启 emacs
(use-package restart-emacs)

;; git 工具
(use-package magit)

;; 自动补全
(use-package auto-complete)
(require 'auto-complete)
;; 启动补全的筛选
;; 启动该项后，在补全时，可以用C-s进行筛选
(setq ac-use-menu-map t)
;; 启动 fuzzy 模式
(setq ac-fuzzy-enable t)

;; 安装 fuzzy-el
;; git clone https://github.com/auto-complete/fuzzy-el.git ~/.emacs.d/lisp/common/
(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "lisp/common/fuzzy-el")))
(require 'fuzzy)
;;使用fuzzy功能
(setq ac-fuzzy-enable t)

;; 启动自动补全
(global-auto-complete-mode t)
;; helm 模糊查询
(use-package helm)

;;; Diff 工具
;; https://github.com/justbur/emacs-vdiff
(use-package vdiff)
(require 'vdiff)

(provide 'init-packages)
