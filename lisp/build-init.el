;; Build Configuration ;;
;; =================== ;;

(require 'elpa-init)
(require-package 'bazel)

(require 'bazel)

;; Bazel bindings.
(global-set-key (kbd "C-c b") #'bazel-compile-current-file)

;; Buildifier on save.
(setq bazel-buildifier-before-save t)

(provide 'build-init)
