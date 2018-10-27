(load-theme 'darktooth t)

;; rainbow delimiters mode activation
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; powerline
(require 'powerline)
(powerline-center-theme)

(provide 'batmacs_theme)
;;; batmacs_theme.el ends here
