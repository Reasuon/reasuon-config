;;;; 代理相关设置
;;; 设置代理类型
(setq url-gateway-method 'socks)
;;; 设置代理地址
(setq url-proxy-services '(("http" . "127.0.0.1:1289")
                           ("https" . "127.0.0.1:1289")
                           ("no_proxy" . "^.*(?!translate\\.google\\.com).*$")))

(provide 'init-proxy)
