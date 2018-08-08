;; https://blog.aaronbieber.com/2015/05/24/from-vim-to-emacs-in-fourteen-days.html 

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

;; https://www.gnu.org/software/emacs/manual/html_node/efaq/Turning-on-auto_002dfill-by-default.html

(setq-default auto-fill-function 'do-auto-fill)

;; https://github.com/bnbeckwith/wc-mode

;; Add the path to the repo
(add-to-list 'load-path "~/.emacs.d/emacs_stuff/wc-mode/")
(require 'wc-mode)
;; Suggested setting
(global-set-key "\C-cw" 'wc-mode)


;; https://github.com/syohex/emacs-mode-line-timer

;; Add the path to the repo
(add-to-list 'load-path "~/.emacs.d/emacs_stuff/emacs-mode-line-timer")
(require 'mode-line-timer)
;; Suggested setting
(global-set-key "\C-ct" 'mode-line-timer-start)
(global-set-key "\C-cp" 'mode-line-timer-stop)
;; https://emacs.stackexchange.com/questions/3488/define-controlshift-keys-without-kbd

;; https://emacs.stackexchange.com/questions/27926/avoiding-overwriting-global-key-bindings
;; info on key bindings


;; https://www.emacswiki.org/emacs/AutoFillMode
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook 'flyspell-mode)

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
 '(package-selected-packages (quote (markdown-mode))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :foreground "medium blue" :height 1.0))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :foreground "medium blue" :height 1.0))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :foreground "dark orange" :height 1.0))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :foreground "dark cyan" :height 1.0)))))

;; https://www.emacswiki.org/emacs/TransposeFrame
;;   M-x transpose-frame
;; Add the path to the repo
(add-to-list 'load-path "~/.emacs.d/emacs_stuff/emacs-transpose-frame")
(require 'transpose-frame)

;;https://emacs.stackexchange.com/questions/14909/how-to-use-flyspell-to-efficiently-correct-previous-word
;;https://www.emacswiki.org/emacs/DedicatedKeys
(global-set-key (kbd "<f12>") 'flyspell-auto-correct-previous-word)

(global-set-key (kbd "M-=") 'count-words)

;;https://stackoverflow.com/a/999721/5986651 opens emacs files you close with

(desktop-save-mode 1)
