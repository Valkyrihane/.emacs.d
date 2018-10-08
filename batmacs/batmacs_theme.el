;;https://github.com/wasamasa/gotham-theme

;; theme is loaded in batmacs_init.el
;; The theme was customized and is not the original gotham theme anymore

;; rainbow delimiters mode activation
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; powerline
(require 'powerline)
(powerline-center-theme)

;; powerline faces
(custom-set-faces
 '(powerline-active1 ((t (:background "blue" :foreground "brightcyan"))))
 '(powerline-active2 ((t (:background "black" :foreground "brightcyan"))))
 '(powerline-inactive0 ((t (:inherit mode-line-inactive))))
 '(powerline-inactive1 ((t (:background "brightyellow" :foreground "brightcyan"))))
 '(powerline-inactive2 ((t (:background "black" :foreground "brightyellow")))))

(provide 'batmacs_theme)
;;; batmacs_theme.el ends here
