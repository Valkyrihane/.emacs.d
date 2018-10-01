;;ido config file

(require 'ivy)

(ivy-mode t)

;; show subdirs when searching
(setq ivy-subdir t)
;; show recent buffers when searching
(setq ivy-use-virtual-buffers t)
;; display matches when searching
(setq ivy-count-format "(%d/%d) ")

(require 'swiper)

(require 'counsel)
(setq counsel-mode t)
