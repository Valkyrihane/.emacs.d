;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"		. "http://orgmode.org/elpa/")
                         ("gnu"		. "http://elpa.gnu.org/packages/")
                         ("melpa"	. "https://melpa.org/packages/")))
(package-initialize)


(defconst NEEDED_PACKAGES '(arduino-mode
			    cmake-mode
			    company
                            company-c-headers
			    counsel
			    darktooth-theme
			    diminish
			    doom-themes
			    drag-stuff
			    dumb-jump
			    flycheck
			    flycheck-color-mode-line
			    highlight-indent-guides
			    highlight-numbers
			    ivy
                            json-mode
			    lua-mode
			    modern-cpp-font-lock
			    neotree
			    no-littering
			    php-mode
			    powerline
			    rainbow-delimiters
			    recentf
			    rjsx-mode
			    speed-type
			    swiper
			    use-package
                            web-mode))

(dolist (p NEEDED_PACKAGES)
  (when (not (package-installed-p p))
    (package-refresh-contents)
    (package-install p)))

(provide 'batmacs_packages)
;;; batmacs_packages.el ends here
