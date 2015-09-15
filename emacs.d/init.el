(add-to-list 'load-path "~/.emacs.d/exec-path-from-shell-1.9")
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)
(global-set-key (kbd "C-x g") 'magit-status)
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq projectile-switch-project-action 'neotree-projectile-action)
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(global-linum-mode t)
(menu-bar-mode -1)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(neo-dir-link-face ((t (:foreground "blue"))))
 '(neo-file-link-face ((t (:foreground "white")))))

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

;; custom themes
(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/replace-colorthemes/"))
;;(load-theme 'cobalt t t)
;;(enable-theme 'cobalt)
(setq inhibit-splash-screen t)
(switch-to-buffer "**")
(provide 'init)
;;; init.el ends here
