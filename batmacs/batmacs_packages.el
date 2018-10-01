;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"		. "http://orgmode.org/elpa/")
                         ("gnu"		. "http://elpa.gnu.org/packages/")
                         ("melpa"	. "https://melpa.org/packages/")))
(package-initialize)


(defconst NEEDED_PACKAGES '(darktooth-theme
			    flycheck
			    flycheck-color-mode-line
			    ido
			    ido-vertical-mode
			    no-littering
			    powerline
			    rainbow-delimiters
			    recentf
			    rjsx-mode
			    use-package))

(dolist (p NEEDED_PACKAGES)
  (when (not (package-installed-p p))
    (package-refresh-contents)
(package-install p)))

