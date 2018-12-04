;;swiper
(global-set-key (kbd "C-s") 'swiper)

;;window movements
(global-set-key (kbd "M-é <down>") 'split-window-below)
(global-set-key (kbd "M-é <right>") 'split-window-right)
(global-set-key (kbd "C-x q") 'delete-window)

;;WinMove
(require 'windmove)
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;;drag-stuff
(require 'drag-stuff)
(global-set-key (kbd "<M-up>")    'drag-stuff-up)
(global-set-key (kbd "<M-down>")  'drag-stuff-down)

;;neo-tree
(require 'neotree)
(global-set-key (kbd "C-c RET") 'neotree-toggle)

;;dumb-jump
(require 'dumb-jump)
(global-set-key (kbd "C-c *") 'dumb-jump-go)

;; counsel
(global-set-key (kbd "C-x f") 'counsel-git)
;; you need to have ag (aka the_silver_surfer)
;; installed in order to use this
(global-set-key (kbd "C-x C-a") 'counsel-ag)

(provide 'batmacs_keybinds)
;;; batmacs_keybinds.el ends here
