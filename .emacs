(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (base16-eighties)))
 '(custom-safe-themes (quote ("51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Enable dead keys
(require 'iso-transl)

;; Enable line numbers
(global-linum-mode t)

;; Disable toolbar
(tool-bar-mode -1)

;; Disable Menu
(menu-bar-mode -1)

;; Disable backup files and autosave
(setq auto-save-default nil)
(setq make-backup-files nil)

(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(custom-set-variables '(coffee-tab-width 2))

(add-to-list 'load-path "~/.emacs.d/")

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.handlebars\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))

(require 'highlight-indentation) (add-hook 'web-mode-hook 'highlight-indentation-mode)(add-hook 'coffee-mode-hook 'highlight-indentation-mode)

(set-face-background 'highlight-indentation-face "#494949")
(set-face-background 'highlight-indentation-current-column-face "#696969")

(require 'emmet-mode)(add-hook 'web-mode-hook 'emmet-mode)(add-hook 'css-mode-hook 'emmet-mode)(add-hook 'scss-mode-hook 'emmet-mode)

(add-hook 'emmet-mode-hook (lambda () (setq emmet-indent-after-insert nil)))
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent 2 spaces.

(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(setq scss-compile-at-save nil)
