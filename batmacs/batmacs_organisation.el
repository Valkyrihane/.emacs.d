
;; clean .emacs.d
(require 'no-littering)
(require 'recentf)

(use-package no-littering
  :ensure t
  :config
  (add-to-list 'recentf-exclude no-littering-var-directory)
  (add-to-list 'recentf-exclude no-littering-etc-directory))

;; putting auto-save files 
(setq auto-save-file-name-transforms
      `((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))

;; customizations are now saved in batmacs_custom.el
(setq custom-file (expand-file-name "batmacs/batmacs_custom.el" user-emacs-directory))
