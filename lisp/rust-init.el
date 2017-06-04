;; Rust Configuration ;;
;; ================== ;;

(require 'elpa-init)
(require-package 'company)
(require-package 'racer)
(require-package 'rust-mode)
(require-package 'flycheck)
(require-package 'flycheck-rust)

(require 'company)
(require 'racer)
(require 'rust-mode)
(require 'electric)
(require 'eldoc)
(require 'flycheck)
(require 'flycheck-rust)

;; Rust Mode.
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-hook 'rust-mode-hook 'cargo-minor-mode)

;; Rust Racer.
(setq racer-cmd "~/.cargo/bin/racer")
(setq racer-rust-src-path "/Users/orglofch/rust/src")
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(local-set-key (kbd "TAB") #'company-indent-or-complete-common)

;; Rust Fmt.
(add-hook 'rust-mode-hook #'rust-format-buffer)

;; Rust Flycheck.
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(electric-pair-mode 1)

(provide 'rust-init)
