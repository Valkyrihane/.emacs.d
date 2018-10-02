;; loading rjsx-mode in .js files
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

;; auto-complete : company-mode
(require 'company)

(add-hook 'after-init-hook 'global-company-mode)
