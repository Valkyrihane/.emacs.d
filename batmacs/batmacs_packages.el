;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"		. "http://orgmode.org/elpa/")
                         ("gnu"		. "http://elpa.gnu.org/packages/")
                         ("melpa"	. "https://melpa.org/packages/")))
(package-initialize)


(defconst NEEDED_PACKAGES '(arduino-mode
			    company
			    counsel
			    darktooth-theme
			    diminish
			    doom-themes
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
			    smart-tabs-mode
			    speed-type
			    swiper
			    use-package))

(dolist (p NEEDED_PACKAGES)
  (when (not (package-installed-p p))
    (package-refresh-contents)
(package-install p)))
