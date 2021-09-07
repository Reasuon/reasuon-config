;;;; 插件配置
;;; 快速重启 emacs
;; https://github.com/iqbalansari/restart-emacs
;; 安装后可以通过 M-x restart-emacs 重启 emacs
(use-package restart-emacs)

;;; popup
;; https://github.com/auto-complete/popup-el
(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "lisp/common/popup-el")))
(require 'popup)

;;; git 工具
;; https://github.com/magit/magit
(use-package magit)

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
(ivy-mode 1)

;;; plantuml
;; https://github.com/skuro/plantuml-mode
(use-package plantuml-mode
  :init
  (setq plantuml-jar-path "d:/plantuml/plantuml.jar")
  (setq plantuml-default-exec-mode 'jar)
  )

;;; 导出为 html
;; https://github.com/hniksic/emacs-htmlize
(use-package htmlize
  :ensure t
  :init
  (setq htmlize-force-inline-images t))

;;; 谷歌翻译
;; https://github.com/atykhonov/google-translate
;;(use-package google-translate
;;  :ensure t
;;  ;;:custom
;;  ;;(custom-set-variables '(google-translate-base-url "https://translate.google.cn/translate_a/single"))
;;  ;;(custom-set-variables '(google-translate-listen-url "https://translate.google.cn/translate_tts"))
;;  ;;(custom-set-variables '(google-translate--ttk-url "https://translate.google.cn/"))
;;  :init
;;  (global-set-key (kbd "C-c t") 'google-translate-at-point)
;;  (global-set-key (kbd "C-c T") 'google-translate-query-translate)
;;  (global-set-key (kbd "C-c r") 'google-translate-at-point-reverse)
;;  (global-set-key (kbd "C-c R") 'google-translate-query-translate-reverse)
;;  (setq google-translate-default-source-language "en")
;;  (setq google-translate-default-target-language "zh-CN")
;; 
;;  )
;;(require 'google-translate-default-ui)

;;; 谷歌翻译
;; https://github.com/lorniu/go-translate
(use-package go-translate
  :ensure t
  :init
  (setq go-translate-base-url "https://translate.google.cn")
  (setq go-translate-local-language "en")
  (setq go-translate-target-language "zh-CN")
  (setq go-translate-extra-directions '(("en" . "zh-CN") ("zh-CN" . "en") ("zh-CN" . "ja")))
  (global-set-key (kbd "C-c t") 'go-translate)
  (global-set-key (kbd "C-c T") 'go-translate-popup)
  :config
  ;; 该行配置参考 https://github.com/lorniu/go-translate/pull/8
  (setq go-translate-token-current (cons 430675 2721866130))
  )

;;; 文件浏览器
;; https://github.com/Alexander-Miller/treemacs
(use-package treemacs
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  )

(use-package treemacs-projectile
  :after (treemacs projectile)
  :ensure t)

(use-package treemacs-magit
  :after (treemacs magit)
  :ensure t)

(use-package treemacs-icons-dired
  :after (treemacs dired)
  :ensure t
  :config (treemacs-icons-dired-mode))

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

