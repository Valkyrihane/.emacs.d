;; loading rjsx-mode in .js files
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

;; auto-complete : company-mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;;indentation
(require 'smart-tabs-mode)
(require 'highlight-indent-guides)

(setq-default tab-width 4)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)

;;display parenthesis
(show-paren-mode)

;;self-explanatory
(defun nuke_traling ()
  "Delets whitespaces."
  (add-hook 'before-save-hook #'delete-trailing-whitespace nil t))
(add-hook 'prog-mode-hook #'nuke_traling)

;;Highlight-numbers-mode
(require 'highlight-numbers)
(add-hook 'prog-mode-hook 'highlight-numbers-mode)

(provide 'batmacs_code)
;;; batmacs_code.el ends here
