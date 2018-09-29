(require 'package)
(package-initialize)

(defconst BATMACS_PATH "~/.emacs.d/batmacs/"
  "Batmacs config files folder path")

(defun batmacs_path (file)
  "returning batmacs file full path"
  (concat BATMACS_PATH file))

;; load config files
(load (batmacs_path "batmacs_keybinds.el"))
(load (batmacs_path "batmacs_settings.el"))

