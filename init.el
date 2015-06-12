(add-to-list 'load-path "~/.emacs.d/exec-path-from-shell-1.9")
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(global-linum-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (adwaita)))
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ruby syntax checking
(add-hook 'after-init-hook #'global-flycheck-mode)

;; custom stuff
(add-to-list 'load-path "~/.emacs.d/custom")

(load "01auto-complete.el")
(load "00smartparens.el")
(load "02projectile.el")
(load "03flyspell.el")

(add-hook 'ruby-mode-hook 'robe-mode)
(require 'ag)
