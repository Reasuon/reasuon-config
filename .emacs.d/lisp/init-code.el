;;;; 开发相关配置

;;; Java 开发相关配置
;;(setq lsp-java-workspace-dir "~/.emacs.d/lspWorkspace")
;; 使用 Java 11 启动语言服务器
(setq lsp-java-java-path "c:/Program Files/Java/jdk-11.0.11/bin/java.exe")
;; 配置项目使用的 jdk
(setq lsp-java-configuration-runtimes '[(:name "JavaSE-1.8"
					       :path "C:/Program Files/Java/jdk1.8.0_121/"
					       :default t
					       )
					(:name "JavaSE-11"
						:path "C:/Program Files/Java/jdk-11.0.11/")])

;; lsp-mode
;; https://github.com/emacs-lsp/lsp-mode
(setq lsp-java-server-install-dir "~/.emacs.d/jdtls/")
(use-package lsp-java)
(use-package lsp-mode :hook ((lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil))
(use-package lsp-ui)
(use-package flycheck)
(use-package yasnippet :config (yas-global-mode))
;;(use-package helm-lsp)
;;(use-package helm
;;  :config (helm-mode))
(use-package lsp-treemacs)
(use-package lsp-ivy)
(use-package company)

(add-hook 'java-mode-hook #'lsp)
(add-hook 'java-mode-hook 'flycheck-mode)

(add-hook 'java-mode-hook (lambda ()
                            (setq c-basic-offset 4
                                  tab-width 4
                                  indent-tabs-mode t)))

(provide 'init-code)
