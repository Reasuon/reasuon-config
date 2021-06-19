;; * 基础配置
;; ** 显示行号

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(global-linum-mode t)
;; ** 显示光标位置
(column-number-mode t)
;; ** 字符集设置(
(prefer-coding-system 'utf-8)

(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")

;; ** 时间设置
;; *** 设定时间日期的格式
(setq display-time-format "%Y-%m-%d %H:%M")
;; *** 启用时间显示设置
(display-time-mode 1)

;; ** 高亮
;; *** 当前行高亮
;; zenburn 这个主题不支持当前行高亮
(global-hl-line-mode 1)

;; * 插件配置

;; ** 自己写/抄的lisp
;; *** 加载 lisp
(add-to-list 'load-path
	     "~/.emacs.d/user-lisp/"
	     )
;; *** 移动整行或整个选中区域的代码
(load-file "~/.emacs.d/user-lisp/move-text.el")
;; lisp 测试
;;(load-file "~/.emacs.d/user-lisp/test.el")

;; * 主题配置
;; ** zenburn-emacs
;; git clone https://github.com/bbatsov/zenburn-emacs.git
;; cp zenburn-emacs/zenburn-theme.el ~/.emacs.d/themes
(add-to-list 'custom-theme-load-path
	     "~/.emacs.d/themes/"
	     )
(load-theme 'zenburn t)
