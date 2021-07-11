;;;; 开发相关配置

;;; Java 开发相关配置
;;(setq lsp-java-workspace-dir "~/.emacs.d/lspWorkspace")
;; 使用 Java 11 启动语言服务器
(setq lsp-java-java-path "c:/Program Files/Java/jdk-11.0.11/bin/java.exe")
;; 配置项目使用的 jdk
;; 默认使用 JDK 8
(setq lsp-java-configuration-runtimes '[(:name "JavaSE-1.8"
					       :path "C:/Program Files/Java/jdk1.8.0_121/"
					       :default t
					       )
					(:name "JavaSE-11"
						:path "C:/Program Files/Java/jdk-11.0.11/")])
;; lsp-mode
;; https://github.com/emacs-lsp/lsp-mode
(setq lsp-java-server-install-dir "~/.emacs.d/jdtls/")

;;; lsp-java
;; https://github.com/emacs-lsp/lsp-java
;; 需要使用命令 M-x lsp-install-server 安装 jdtls 服务器
(use-package lsp-java)

;;; lsp-mode
;; https://github.com/emacs-lsp/lsp-mode
(use-package lsp-mode :hook ((lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil))

;;; lsp-ui
;; https://github.com/emacs-lsp/lsp-ui
(use-package lsp-ui)

;;; 语法检测
(use-package flycheck)
;;; 代码片段:
(use-package yasnippet :config (yas-global-mode))

;;(use-package helm-lsp)
;;(use-package helm
;;  :config (helm-mode))

;;; lsp-treemacs
;; 
(use-package lsp-treemacs)

;;; LSP 调用 ivy
(use-package lsp-ivy)

;;; 自动补全
(use-package company)
;; 在所有的 buffers 中启动 company-mode
(add-hook 'after-init-hook 'global-company-mode)

;;; lsp-java hook
(add-hook 'java-mode-hook #'lsp)
(add-hook 'java-mode-hook 'flycheck-mode)
(add-hook 'java-mode-hook (lambda ()
                            (setq c-basic-offset 4
                                  tab-width 4
                                  indent-tabs-mode t)))

(provide 'init-code)
