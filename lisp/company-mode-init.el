;; Company-mode Initialization ;;
;; =========================== ;;

(require 'elpa-init)
(require-package 'company)

(require 'company)

(setq company-tooltip-align-annotations t)
(add-hook 'prog-mode-hook 'company-mode)

(provide 'company-mode-init)
