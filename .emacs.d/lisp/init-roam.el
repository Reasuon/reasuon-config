;;;;


(use-package emacsql-sqlite3
  :ensure t
  )

;;(cl-defmethod org-roam-node-directories ((node org-roam-node))
;;  (if-let ((dirs (file-name-directory (file-relative-name (org-roam-node-file node) org-roam-directory))))
;;      (format "(%s)" (car (f-split dirs)))
;;    ""))

;;; org-roam
;; https://github.com/org-roam/org-roam
(use-package org-roam
  :ensure t
;;  :after ivy-mode
;;  :hook
;;  (after-init . org-roam-mode)
  :init
  (setq org-roam-v2-ack t)
  (setq org-roam-node-display-template "${title:64} ${tags}")
;;  (setq org-roam-node-display-template "${title:64} ${directories:10} ${tags}")
  :custom
  (org-roam-directory (file-truename "d:/roam"))
  (org-roam-complete-everywhere t)
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today)
	 ("C-M-i" . completion-at-point))
  :config
  (org-roam-setup)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))

(use-package org-download
  :after org
  :bind
  (:map org-mode-map
        (("s-Y" . org-download-screenshot)
         ("s-y" . org-download-yank))))

(provide 'init-roam)
