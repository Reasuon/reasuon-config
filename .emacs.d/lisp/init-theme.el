;; 主题配置
;; zenburn-emacs
;;(use-package zenburn-theme
;;  :init (load-theme 'zenburn t))

;; 安装 mode-line
;; 需要注意，该插件最好在主题加载后再加载，方便该插件根据主题进行自动适应
;;(use-package smart-mode-line
;;  :init
;;  (setq sml/no-confirm-load-theme t)
;;  (setq sml/theme 'respectful)
;;  (sml/setup))

;; doom-themes
;; https://github.com/hlissner/emacs-doom-themes
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (load-theme 'doom-1337 t)
  (doom-themes-visual-bell-config)
  (doom-themes-neotree-config)
  (setq doom-themes-treemacs-theme "doom-atom")
  (doom-themes-treemacs-config)
  (doom-themes-org-config)
;;  :init (load-theme 'doom-1337)
  )

(require 'doom-themes)

;; doom-modeline
;; https://github.com/seagle0128/doom-modeline
;; 为了能够正常显示图标，需要安装字体
;; 执行: M-x all-the-icons-install-fonts
;; Linux 下该命令会自动安装字体
;; Windows 下该命令会下载字体文件到指定文件夹（交互指定下载位置）
;; 手动安装字体即可
(use-package doom-modeline
  :config
  (setq doom-modeline-icon (display-graphic-p))
  (setq doom-modeline-major-mode-icon t)
  :init (doom-modeline-mode 1))

;; 彩虹括号
(use-package rainbow-delimiters
  :defer 1)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; 字体配置
;; https://github.com/tumashu/cnfonts
;; 安装完成之后，执行: M-x cnfonts-edit-profile 打开页面进行配置
(use-package cnfonts)
(require 'cnfonts)
;; 启动字体管理
(cnfonts-enable)
(cnfonts-set-spacemacs-fallback-fonts)

(provide 'init-theme)
