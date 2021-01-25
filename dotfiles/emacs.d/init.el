;; Set nice keybindings for Finnish keyboard
;; https://github.com/auramo/emacs-osx-finnish-keyboard-fix
(defun aq-binding (any) nil)
(load  "~/.emacs.d/aquamacs-tools.el")
(load  "~/.emacs.d/emulate-mac-keyboard-mode.el")
(setq emulate-mac-finnish-keyboard-mode t)
(setq mac-right-option-modifier nil)

;; Some sensible defaults
(setq inhibit-splash-screen t)
(setq visible-bell t)
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(setq default-directory (concat (getenv "HOME") "/"))
