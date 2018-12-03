;; Removes *messages* from the buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Removes *scratch* from buffer after the mode has been set.
(defun remove-scratch-buffer ()
  "Scratch."
  (if (get-buffer "*scratch*")
      (kill-buffer "*scratch*")))
(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; Don't show *Buffer list* when opening multiple files at the same time.
(setq inhibit-startup-buffer-menu t)

;; Deletes startup buffer
(setq inhibit-startup-message t)

;; Show only one active window when opening multiple files at the same time.
(add-hook 'window-setup-hook 'delete-other-windows)

;; yes > y | no > n
(fset 'yes-or-no-p 'y-or-n-p)

;; links clipboard to emacs
;; You need to install the xclip package on
;; your computer in order to use this config
(require 'xclip)
(xclip-mode t)

(provide 'batmacs_misc)
;;; batmacs_misc.el ends here
