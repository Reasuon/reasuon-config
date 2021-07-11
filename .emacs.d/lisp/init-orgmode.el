;;;; org-mode 相关配置

;; 自动换行
(global-visual-line-mode 1)

;; 执行语言匹配
(org-babel-do-load-languages
 'org-babel-do-load-languages
 '((java . t)
 (C . t)
 (emacs-lisp . t)
 )
)

;; 加载 java 相关 el
(require 'ob-java)
;; 加载 c 相关 el
(require 'ob-C)
;; 加载 lisp 相关 el
(require 'ob-lisp)

;;; 设置时间格式
;;
(setq-default org-display-custom-times t)
(setq org-time-stamp-custom-formats '("<%Y-%m-%d %a>" . "<%Y-%m-%d %a %H:%M:%S>"))

;; 加载 GTD 相关 el
(require 'init-gtd)

(provide 'init-orgmode)
