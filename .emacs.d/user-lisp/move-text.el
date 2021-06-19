;; 移动整行或选中的区域
(defun move-text-internal (arg)
      (cond
       ((and mark-active transient-mark-mode)
	(if (> (point) (mark))
	    (exchange-point-and-mark))
	(let ((column (current-column))
	      (text (delete-and-extract-region (point) (mark))))
	  (forward-line arg)
	  (move-to-column cloumn t)
	  (set-mark (point))
	  (insert text)
	  (exchange-point-and-mark)
	  (setq deactivate-mark nul)))
       (t
	(let ((column (current-column)))
	  (beginning-of-line)
	  (when (or (> arg 0) (not (bobp)))
	    (forward-line)
	    (when (or (< arg 0) (not (bobp)))
	      (transpose-lines arg))
	    (forward-line -1))
	  (move-to-column column t)))))

;; 向下移动整行或选中的区域
(defun move-text-down (arg)
  "Move region (transient-mark-mode active) or current line arg lines down."
  (interactive "*p")
  (move-text-internal arg))

;; 向上移动整行或选中的区域
(defun move-text-up (arg)
  "Move region (transient-mark-mode active) or current line arg lines up."
  (interactive "*p")
  (move-text-internal (- arg)))

;; 绑定快捷键
(global-set-key [S-C-up] 'move-text-up)
(global-set-key [S-C-down] 'move-text-down)
