;; loading rjsx-mode in .js files
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

;; auto-complete : company-mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;;indentation
(require 'highlight-indent-guides)

;; will only use space for indentation
(setq-default indent-tabs-mode nil)

(setq-default c-basic-offset 2)

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


;;Web mode preferences
(require 'web-mode)
;; http://codewinds.com/blog/2015-04-02-emacs-flycheck-eslint-jsx.html
; use web-mode for .jsx and .js files
(add-to-list 'auto-mode-alist '("\\.js$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; adjust indents for web-mode to 2 spaces
(defun my-web-mode-hook ()
  "Hooks for Web mode, adjust indentations."
  ;;; http://web-mode.org/
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)

(provide 'batmacs_code)
;;; batmacs_code.el ends here
