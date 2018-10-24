;; https://stackoverflow.com/questions/31079204/emacs-package-install-script-in-init-file


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/packages-init")

;----------- Shortcuts-------------------
;; https://github.com/bnbeckwith/wc-mode
;; wc-mode Suggested setting
(global-set-key "\C-cw" 'wc-mode)

(global-set-key "\C-cf" 'font-lock-mode)

;; Mode-line-timer suggested setting
(global-set-key "\C-ct" 'mode-line-timer-start)
(global-set-key "\C-cp" 'mode-line-timer-stop)

;; https://emacs.stackexchange.com/questions/14909/how-to-use-flyspell-to-efficiently-correct-previous-word
;; https://www.emacswiki.org/emacs/DedicatedKeys
(global-set-key (kbd "<f12>") 'flyspell-auto-correct-previous-word)
(global-set-key (kbd "M-=") 'count-words)

;; General links for instructions on keybindings
;; https://emacs.stackexchange.com/questions/3488/define-controlshift-keys-without-kbd
;; https://emacs.stackexchange.com/questions/27926/avoiding-overwriting-global-key-bindings
;; info on key bindings

;------------ switch on modes/functions upon startup---------------
;; https://www.gnu.org/software/emacs/manual/html_node/efaq/Turning-on-auto_002dfill-by-default.html
(setq-default auto-fill-function 'do-auto-fill)

;; https://www.emacswiki.org/emacs/AutoFillMode
;; paragraph filling and spell check mode 
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'abbrev-mode)

;; for python
;; https://stackoverflow.com/questions/2515754/changing-python-interpreter-for-emacs?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

(setq python-shell-interpreter "/home/eghx/anaconda3/bin/python")

;; https://stackoverflow.com/questions/2736087/eval-after-load-vs-mode-hook?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

(add-hook 'markdown-mode-hook 'markdown-toggle-url-hiding)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ess-smart-underscore ess auctex markdown-mode))))

;; done using gui and it got converted to this!
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :foreground "medium blue" :height 1.0))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :foreground "medium blue" :height 1.0))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :foreground "dark orange" :height 1.0))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :foreground "dark cyan" :height 1.0)))))


;; https://stackoverflow.com/a/999721/5986651 opens emacs files you close with

(desktop-save-mode 1)


;; https://www.r-bloggers.com/using-r-with-emacs-and-ess/
;; https://github.com/pprevos/r.prevos.net/blob/master/Miscellaneous/BodyImage/init.el

;; Line numbers only for 
(add-hook 'ess-mode-hook 'linum-mode)
