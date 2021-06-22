;; 插件配置

;; 快速重启 emacs
(use-package restart-emacs)

;; git 工具
(use-package magit)

;; 自动补全
(use-package auto-complete)
(require 'auto-complete)
;; 启动自动补全
(auto-complete-mode 1)

(provide 'init-packages)
