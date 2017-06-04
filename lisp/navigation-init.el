(require 'recentf)

(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(recentf-mode 1)
(setq recentf-max-menu-items 40)

;; Shows a list of buffers.
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Enable move point from window to window using Shift and the arrow keys.
(windmove-default-keybindings)

(provide 'navigation-init)
