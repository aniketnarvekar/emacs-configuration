
(require 'package)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

;;-------------------- Org mode --------------------

(require 'org)
(org-babel-load-file
 (expand-file-name
  (concat user-emacs-directory  "settings.org")))
;;-------------------- END --------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (try yasnippet-snippets yasnippet org-beautify-theme magit minimap use-package slime-theme slime paredit org-bullets neotree irony ht gruber-darker-theme company auto-complete all-the-icons))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
