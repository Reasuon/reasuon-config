;; 加载 lisp

(add-to-list 'load-path
	     ;; 加载通用文本处理 lisp
	     (expand-file-name (concat user-emacs-directory "lisp/common-text"))
	     )

;; 区域或整行代码移动的 lisp
(require 'move-text)

;; 直接复制或剪切整行文本
(require 'cut-copy-line)

(provide 'init-lisp)
