;; theme loading
(load-theme 'gotham t)

;; rainbow delimiters mode activation
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; powerline
(require 'powerline)
(powerline-center-theme)
