;; 基础配置

;; 高亮成对括号
(show-paren-mode 1)

;; 修复区域选择与输入法的冲突
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "C-@") 'set-mark-command)

;; 关闭工具栏
(tool-bar-mode 0)
;; 关闭菜单栏
(menu-bar-mode 0)
;; 关闭滚动条
(scroll-bar-mode 0)
;; 关闭启动页面
(setq inhibit-startup-screen t)

;; 显示行号
(global-linum-mode t)

;; 显示光标位置
(column-number-mode t)

;; 字符集设置
(prefer-coding-system 'utf-8)

(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")

;; 时间设置
;; 设定时间日期的格式
(setq display-time-format "%Y-%m-%d %H:%M")
;; 启用时间显示设置
(display-time-mode 1)

;; 高亮
;; 当前行高亮
;; zenburn 这个主题不支持当前行高亮
(global-hl-line-mode 0)

;; 自动保存文件配置

(provide 'init-startup)
