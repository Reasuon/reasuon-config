;;;; 插件配置
;;; 快速重启 emacs
;; https://github.com/iqbalansari/restart-emacs
;; 安装后可以通过 M-x restart-emacs 重启 emacs
(use-package restart-emacs)

;;; git 工具
;; https://github.com/magit/magit
(use-package magit)

;;; 自动补全
;; https://github.com/auto-complete/auto-complete
;;(use-package auto-complete)
;;(require 'auto-complete)
;; 启动补全的筛选
;; 启动该项后，在补全时，可以用C-s进行筛选
;;(setq ac-use-menu-map t)

;;; 安装 fuzzy-el
;; git clone https://github.com/auto-complete/fuzzy-el.git ~/.emacs.d/lisp/common/
;;(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "lisp/common/fuzzy-el")))
;;(require 'fuzzy)
;; 使用fuzzy功能
;;(setq ac-fuzzy-enable t)
;; 启动自动补全
;;(global-auto-complete-mode t)

;;; Diff 工具
;; https://github.com/justbur/emacs-vdiff
(use-package vdiff)
(require 'vdiff)

(use-package mediawiki)
(require 'mediawiki)

;;; 查询强化
;; https://github.com/abo-abo/swiper
;; 该项目的候选高亮会和 doom-themes 的主题冲突，使高亮失效
;; 参考 issues: https://github.com/abo-abo/swiper/issues/2748
(use-package counsel
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-display-style nil)
  (setq ivy-use-selectable-prompt t)
  (setq ivy-current-match t)
  (setq ivy-minibuffer-match-face-1 t)
  (setq ivy-confirm-face t)
  (setq ivy-subdir t)
  (setq ivy-modified-buffer t)
  (setq ivy-modified-outside-buffer t)
  (global-set-key (kbd "C-s") 'swiper-isearch)
  (global-set-key (kbd "C-r") 'swiper-isearch-backward)
  (global-set-key (kbd "C-x b") 'ivy-switch-buffer)
  (global-set-key (kbd "C-c v") 'ivy-push-view)
  (global-set-key (kbd "C-c V") 'ivy-pop-view)
  )
(counsel-mode 1)

;;; 导出为 html
;; https://github.com/hniksic/emacs-htmlize
(use-package htmlize)

;;; 谷歌翻译
;; https://github.com/atykhonov/google-translate
(use-package google-translate)
(require 'google-translate-default-ui)
(global-set-key (kbd "C-c t") 'google-translate-at-point)
(global-set-key (kbd "C-c T") 'google-translate-query-translate)
(global-set-key (kbd "C-c r") 'google-translate-at-point-reverse)
(global-set-key (kbd "C-c R") 'google-translate-query-translate-reverse)
(setq google-translate-default-source-language "en")
(setq google-translate-default-target-language "zh-CN")

;;; 字体配置
;; https://github.com/tumashu/cnfonts
;; 安装完成之后，执行: M-x cnfonts-edit-profile 打开页面进行配置
;; 配置完字体之后，可以在 “其他” 页面生成配置，放在 .emacs 或 init.el 中，然后关闭字体配置
;; 该配置还能解决 windows 下 emacs 显示、输入中文卡顿的问题
;;(use-package cnfonts)
;;(require 'cnfonts)

;; 启动字体管理
;;(cnfonts-enable)
;;(cnfonts-set-spacemacs-fallback-fonts)

(require 'init-code)

(provide 'init-packages)
