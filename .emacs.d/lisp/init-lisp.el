;; 加载 lisp

;; 加载通用文本处理 lisp
(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "lisp/common-text")))

;; 区域或整行代码移动的 lisp
(require 'move-text)
;; 直接复制或剪切整行文本
(require 'cut-copy-line)
;; 文本替换相关
(require 'text-replace)

;; 加载 gui 相关 lisp
(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "lisp/common-gui")))

;; 切换透明度
(require 'alpha-switch)

(provide 'init-lisp)
