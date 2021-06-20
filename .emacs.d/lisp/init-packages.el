;; 插件配置

;; 快速重启 emacs
(use-package restart-emacs)

;; 代码补全
(use-package company
  :init
  (setq company-idle-delay 0.2
	company-tooltip-limit 10
	company-minimum-prefix-length 2
	company-dabbrev-downcase nil
	company-dabbrev-ignore-case nil
	company-dabbrev-code-other-buffers t
	company-tooltip-align-annotations t
	company-require-match 'never
	company-global-modes
	'(not comint-mode erc-mode message-mode help-mode gud-mode)
	company-frontends '(company-pseudo-tooltip-frontend company-echo-metadata-frontend)
	company-backends '((:separate company-capf company-yasnippet)))
  :config
  (global-company-mode +1))

(provide 'init-packages)
