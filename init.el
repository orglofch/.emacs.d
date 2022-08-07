(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'build-init)
(require 'c++-init)
(require 'company-mode-init)
(require 'editing-init)
(require 'exec-path-init)
(require 'elpa-init)
(require 'glsl-init)
(require 'misc-init)
(require 'navigation-init)
(require 'rust-init)
(require 'ui-init)

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(glsl-mode rainbow-delimiters golden-ratio atom-one-dark-theme exec-path-from-shell racer flycheck-rust company color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized cargo)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
