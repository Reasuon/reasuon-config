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

(use-package doom-modeline
  :config
  (setq doom-modeline-icon (display-graphic-p))
  (setq doom-modeline-major-mode-icon t)
  :init (doom-modeline-mode 1))

(require 'doom-themes)

;; 彩虹括号
(use-package rainbow-delimiters
  :defer 1)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(provide 'init-theme)
