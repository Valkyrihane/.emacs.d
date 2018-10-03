;; loading rjsx-mode in .js files
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

;; auto-complete : company-mode
(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

;;indentation
(require 'highlight-indent-guides)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)

(provide 'batmacs_code)
;;; batmacs_code.el
