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

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Menlo")))))
