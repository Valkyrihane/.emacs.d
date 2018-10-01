;;flycheck config file

(require 'flycheck)
(require 'flycheck-color-mode-line)

(add-hook 'prog-mode-hook 'flycheck-mode)

;; desactivate fringe indication
(setq flycheck-indication-mode nil)

;; adding flycheck-color-mode-line
(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)
