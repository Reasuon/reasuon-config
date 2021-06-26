;;;;  GTD 时间、任务管理设置

;;; 设置 org-mode 存放 gtd 文件位置
;; ~/gtd 存放待办事项等
(setq org-agenda-files (quote ("~/.gtd")))

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; 设置任务状态
;; TODO: 待办 NEXT: 准备做 DONE: 已完成
;; WAITING: 等待 HOLD: 停止 CANCELLED: 取消
;; PHONE: 电话 MEETING: 会议
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold)
              ("MEETING" :foreground "forest green" :weight bold)
              ("PHONE" :foreground "forest green" :weight bold))))

;; 启动后，就可以通过 C-c C-t KEY 快速切换状态
(setq org-use-fast-todo-selection t)

(provide 'init-gtd)
