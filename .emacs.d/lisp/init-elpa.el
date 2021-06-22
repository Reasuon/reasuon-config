;; ELPA

;; 配置清华大学镜像作为ELPA软件源
(setq package-archives '(("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

;; 软件源配置

;; 关闭签命校验，但是请在使用可信用的软件源时关闭签命校验
(setq package-check-signature nil)
;; 启用包管理器
(require 'package)
;; 初始化包管理器
(unless (bound-and-true-p package--initialized)
  (package-initialize))

;; 如果启动时输出 package-initialize 警告，则需要加入以下这行，反之则不需要
(setq warning-suppress-log-types '((package reinitialization)))

(package-initialize)

;; 刷新软件源
(unless package-archive-contents
  (package-refresh-contents))

;; 安装包管理器
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; 包管理器配置
(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-always-demand nil)
  (setq use-package-expand-minimally t)
  (setq use-package-verbose t))

;; 插件安装

;; 启动包管理器
(require 'use-package)

(provide 'init-elpa)
