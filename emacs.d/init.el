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
 '(custom-enabled-themes (quote (cobalt)))
 '(custom-safe-themes
   (quote
    ("b42cf9ee9e59c3aec585fff1ce35acf50259d8b59f3047e57df0fa38516aa335" "ef36e983fa01515298c017d0902524862ec7d9b00c28922d6da093485821e1ba" "b39af5ef9cfc7d460bd3659d26731effa17799127d6916c4d85938dda650d4b0" "0f0adcd1352b15a622afd48fcff8232169aac4b5966841e506f815f81dac44ea" "6c57adb4d3da69cfb559e103e555905c9eec48616104e217502d0a372e63dcea" "af4cfe7f2de40f19e0798d46057aae0bccfbc87a85a2d4100339eaf91a1f202a" "6981a905808c6137dc3a3b089b9393406d2cbddde1d9336bb9d372cbc204d592" "81df5c7887aaa76c0174ae54aacd20ab18cc263b95332b09efa0d60a89feaf6a" "8e997c790c6b22c091edb8a866f545857eaae227a0c41df402711f6ebc70326c" "e008d9149dd39b249d4f8a9b5c1362d8f85bd11e9c08454e5728fbf0fcc11690" "2fc7672758572337a2c9d748d8f53cc7839244642e4409b375baef6152400b4d" "0ae977e603e99d89c80d679377bfed4a904317968bd885ee063455cee01728d3" "ad97202c92f426a867e83060801938acf035921d5d7e78da3041a999082fb565" "98e5e942303b4f356d6573009c96087f9b872f2fa258c673188d913f6faf17ea" "989b6cb60e97759d7c45d65121f43b746aff298b5cf8dcf5cfd19c03830b83e9" "4974f680cd265a7049d7bfbb9be82e78ae97c12dd5eac0205756acc3f424f882" "0ca71d3462db28ebdef0529995c2d0fdb90650c8e31631e92b9f02bd1bfc5f36" "5cd698ce53179b1e4eaa7917c992832a220600c973967904fea71e3980a46532" "9db75254c21afb1ab22cb97a3ac39ccbbd680ef31197605fd5f312e91d84c08c" "4f66410c3d3434129e230eaab99f9319bd5871623689fb56713e38255eb16ddc" "3ddfde8b6afe9a72749b73b021ffd5a837f6b9d5c638f7c16d81ec9d346d899f" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default))))
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
;; kill scratch buffer in emacs
(add-hook 'emacs-startup-hook
	  (lambda ()
	    (kill-buffer "*scratch*")
	    ))
;; custom themes
(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/replace-colorthemes/"))
(load-theme 'cobalt t t)
(enable-theme 'cobalt)

(provide 'init)
;;; init.el ends here
