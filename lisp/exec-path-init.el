;; OSX Exec Path Initialization ;;
;; ============================ ;;

(require 'elpa-init)

(require-package 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(provide 'exec-path-init)
