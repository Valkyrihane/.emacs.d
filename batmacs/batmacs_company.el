;; auto-complete : company-mode

(require 'company)
;; (add-hook 'after-init-hook 'global-company-mode)
(add-hook 'prog-mode-hook 'global-company-mode)


;; COMPLETE ON TAB
(define-key company-mode-map [remap indent-for-tab-command]
  'company-indent-for-tab-command)

(setq tab-always-indent 'complete)

(defvar completion-at-point-functions-saved nil)

(defun company-indent-for-tab-command (&optional arg)
  (interactive "P")
  (let ((completion-at-point-functions-saved completion-at-point-functions)
        (completion-at-point-functions '(company-complete-common-wrapper)))
    (indent-for-tab-command arg)))

(defun company-complete-common-wrapper ()
  (let ((completion-at-point-functions completion-at-point-functions-saved))
    (company-complete-common)))


;; (add-to-list 'company-backends 'company-tern)

;; (require 'company-tern)
;; (add-to-list 'company-backends 'company-tern)
;; (add-hook 'js2-mode-hook (lambda () (tern-mode)))
;; (add-hook 'rjsx-mode-hook (lambda () (tern-mode)))

;; ;; Disable completion keybindings, as we use xref-js2 instead
;; (define-key tern-mode-keymap (kbd "M-.") nil)
;; (define-key tern-mode-keymap (kbd "M-,") nil)

(provide 'batmacs_company)
;;; batmacs_company.el ends here
