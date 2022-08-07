;; C++ Configuration ;;
;; ================= ;;

(require 'elpa-init)
(require-package 'company)
(require-package 'clang-format)
(require-package 'google-c-style)
(require-package 'flycheck)

(require 'clang-format)
(require 'company)
(require 'google-c-style)
(require 'flycheck)

;; Code completion.
(add-hook 'c++-mode-hook 'company-mode)

;; Formatting.
(add-hook 'c++-mode-hook 'google-set-c-style)
(add-hook 'c++-mode-hook 'google-make-newline-indent)

;; Syntax checking.
(add-hook 'c++-mode-hook 'flycheck-mode)

;; A Bazel based flychecker.
;;
;; Setting up the clang flychecker to find the Bazel external include files
;; can be painful.
(flycheck-define-checker bazel
    "Bazel flychecker"
    ;; Compile the entire project and rely on caching.
    ;; TODO: This doesn't work with unsaved buffers.
    :command ("bazel" "build" "//...")
    :error-patterns
    ((error line-start (file-name) "(" line "," column "): error:" (message) line-end))
    :modes c++-mode)
(add-to-list 'flycheck-checkers 'bazel)

;; Clang format on save or on demand.
(global-set-key (kbd "C-c f") 'clang-format-buffer)
(defun clang-format-on-save() "Clang format on save."
  (when (eq major-mode 'c++-mode) (clang-format-buffer)))
(add-hook 'after-save-hook 'clang-format-on-save)

(provide 'c++-init)
