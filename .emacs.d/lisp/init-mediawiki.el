;;;; mediawiki 配置
;;; mediawiki.el
;; https://github.com/hexmode/mediawiki-el
(use-package mediawiki)
(require 'mediawiki)

;; 配置站点
(setq mediawiki-site-alist '(("SHMediaWiki" "http://192.168.1.244/wiki/index.php/"" "" ""首页")))
(setq mediawiki-site-default "SHMediaWiki")

(provide 'init-mediawiki)
