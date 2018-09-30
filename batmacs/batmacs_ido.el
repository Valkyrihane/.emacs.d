;;ido config file

(require 'ido)
(require 'ido-vertical-mode)

(ido-mode 1)
(ido-vertical-mode 1)

(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'guess)

(setq ido-vertical-define-keys 'C-n-C-p-up-and-down)

;;styling
(setq ido-use-faces t)
(set-face-attribute 'ido-vertical-first-match-face nil
                    :background "#444444")
(set-face-attribute 'ido-vertical-only-match-face nil
                    :foreground "#55ff55"
		    :background "black")
(set-face-attribute 'ido-vertical-match-face nil
                    :foreground "#ffx0000")
