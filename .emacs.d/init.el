;;;; 配置

;;; 提高启动时垃圾回收阈值加快启动
(setq gc-cons-threshold (* 50 1000 1000))

;;; 显示启动时间配置
;; Use a hook so the message doesn't get clobbered by other messages.
(add-hook 'emacs-startup-hook
    (lambda ()
        (message "Emacs ready in %s with %d garbage collections."
            (format "%.2f seconds"
                (float-time
                    (time-subtract after-init-time before-init-time)))
        gcs-done)))

;;; 自动生成配置
;; 将自动生成的配置存入指定文件
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;;; 加载 lisp
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))
(require 'init-startup)
(require 'init-elpa)
(require 'init-packages)
(require 'init-theme)
(require 'init-lisp)
(require 'init-orgmode)
(require 'init-mediawiki)
(require 'init-eaf)
