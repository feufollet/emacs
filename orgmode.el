(defun efs/org-mode-setup()
  (org-indent-mode)
  (variable-pitch-mode 1)
  (auto-fill-mode 0)
  (visual-line-mode 1)
  (setq evil-auto-indent nil))


(use-package org
  ;:hook (org-mode . efs/org-mode-setup)
  :config
  (setq org-ellipsis " ⤵"
	org-hide-emphasis-markers t))

(use-package org-superstar
  :after org
  :hook (org-mode . org-superstar-mode)
  :custom
  (org-superstar-headline-bullets-list
   '("◉" "○" "✸" "✿")))

(dolist (face '((org-level-1 . 1.2)
		(org-level-2 . 1.1)
		(org-level-3 . 1.05)
		(org-level-4 . 1.0)
		(org-level-5 . 1.1)
		(org-level-6 . 1.1)
		(org-level-7 . 1.1)
		(org-level-8 . 1.1)))
  (set-face-attribute (car face) nil :font "Calibri" :weight 'regular :height (cdr face)))
