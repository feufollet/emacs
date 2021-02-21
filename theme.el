(setq inhibit-startup-message t)

(scroll-bar-mode -1)	; Disable visible scrollbar
(tool-bar-mode -1)      ; Disable the toolbar
(tooltip-mode -1)       ; Disable tooltips
(set-fringe-mode 10)    ; Give some breething room
(menu-bar-mode -1)	; Disable the menu bar
(setq visible-bell t)   ; Set up the visible bell

(set-face-attribute 'default nil :font "Fira Code Retina" :height 140)


(use-package all-the-icons)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-material t))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))
