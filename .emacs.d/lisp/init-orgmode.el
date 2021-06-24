;; org-mode 相关配置

;; 自动换行
(global-visual-line-mode 1)

;; 执行语言匹配
(org-babel-do-load-languages
 'org-babel-do-load-languages
 '((java . t)
 (C . t))
 (emacs-lisp . t)
 )

;; 加载 java 相关 el
(require 'ob-java)
;; 加载 c 相关 el
(require 'ob-C)
;;
(require 'ob-lisp)


(provide 'init-orgmode)
