;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"		. "http://orgmode.org/elpa/")
                         ("gnu"		. "http://elpa.gnu.org/packages/")
                         ("melpa"	. "https://melpa.org/packages/")))
(package-initialize)


(defconst NEEDED_PACKAGES '(counsel
			    darktooth-theme
			    diminish
			    drag-stuff
			    flycheck
			    flycheck-color-mode-line
			    highlight-indent-guides
			    highlight-numbers
			    ivy
			    no-littering
			    powerline
			    rainbow-delimiters
			    recentf
			    rjsx-mode
			    swiper
			    use-package))

(dolist (p NEEDED_PACKAGES)
  (when (not (package-installed-p p))
    (package-refresh-contents)
(package-install p)))
