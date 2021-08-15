;;;; 文本替换方法

;;; 等值替换
;; 当 var1 等于 var2 时输出指定文本
(defun equal-replace(var1 var2 var3)
  (if (string= var1 var2)
      (insert var3)
    (insert var1)))

(defun equal-replace-org(var1 var2 var3)
  (if (string= var1 var2)
      (message var3)
    (message var1)))

(provide 'text-replace)
