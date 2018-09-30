;; Batmacs path
(defconst BATMACS_PATH "~/.emacs.d/batmacs/"
  "Batmacs config files folder path")

(defun batmacs_path (file)
  "returning batmacs file full path"
  (concat BATMACS_PATH file))

;; load config files
;; important config - order of loaded files might be important
(load (batmacs_path "batmacs_packages"))
(load (batmacs_path "batmacs_organisation"))
(load (batmacs_path "batmacs_keybinds"))
(load (batmacs_path "batmacs_settings"))

;; global config
(load (batmacs_path "batmacs_misc"))
(load (batmacs_path "batmacs_theme"))

;; specific packages
(load (batmacs_path "batmacs_ido"))
(load (batmacs_path "batmacs_recentf"))

;; custom config
(load (batmacs_path "batmacs_custom"))
