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
(setq-default org-display-custom-times t)
(setq org-time-stamp-custom-formats '("<%Y-%m-%d %a>" . "<%Y-%m-%d %a %H:%M>"))
;; 设置周一为日历上周的第一天
(setq calendar-week-start-day 1)

;;; 生成 html 时将 css 文件织入 html
(defun my-org-inline-css-hook (exporter)
  "Insert custom inline css"
  (when (eq exporter 'html)
    (let* ((dir (ignore-errors (file-name-directory (buffer-file-name))))
           (path (concat dir "style.css"))
           (homestyle (or (null dir) (null (file-exists-p path))))
           (final (if homestyle "~/.emacs.d/html/css/worg.css" path))) ;; <- set your own style file path
      (setq org-html-head-include-default-style nil)
      (setq org-html-head (concat
                           "<style type=\"text/css\">\n"
                           "<!--/*--><![CDATA[/*><!--*/\n"
                           (with-temp-buffer
                             (insert-file-contents final)
                             (buffer-string))
                           "/*]]>*/-->\n"
                           "</style>\n")))))
(add-hook 'org-export-before-processing-hook 'my-org-inline-css-hook)

;;; 禁用 org-mode 自带的样式
(progn
  "Settings of `org-export'."
  (setq ;;org-export-in-background 0
        ;; Hide html built-in style and script.
        org-html-htmlize-output-type 'inline-css ;; 保留代码块高亮
        org-html-head-include-default-style nil
        org-html-head-include-scripts nil
        ))

;;; 模板
(require 'org-tempo)
;;(add-to-list 'org-structure-template-alist '("s" "#+NAME: ?\n#BEGINE_SRC \n\n#+END+SRC"))

;;; 缩进
(setq org-startup-indented 'headline-data)
(setq org-hide-leading-stars nil)
(setq org-indent-mode-turns-on-hiding-stars nil)
(setq org-indent-indentation-per-level 0)

;;(use-package ox-pandoc
;;  :ensure t
;;  :init
;;  (setq org-pandoc-options-for-html5 '((standalone . t) (self-contained . t))))

;;; 默认展示所有内联图片
(setq org-startup-with-inline-images t)

(defun org-org-html--format-image (source attributes info)
  (format "<img src=\"data:image/%s;base64,%s\"%s />"
      (or (file-name-extension source) "")
      (base64-encode-string
       (with-temp-buffer
	 (insert-file-contents-literally source)
	 (buffer-string)))
      (file-name-nondirectory source)))
(advice-add #'org-html--format-image :override #'org-org-html--format-image)

;; 加载 GTD 相关 el
(require 'init-gtd)

(provide 'init-orgmode)
