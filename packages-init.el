;; https://blog.aaronbieber.com/2015/05/24/from-vim-to-emacs-in-fourteen-days.html &&
;; https://stackoverflow.com/questions/31079204/emacs-package-install-script-in-init-file

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

; list the packages you want
(setq package-list
    '(markdown-mode wc-mode transpose-frame auctex ess ess-smart-underscore))

;; https://github.com/syohex/emacs-mode-line-timer
;; Add the path to the repo
;; (add-to-list 'load-path "~/.emacs.d/non-elpa/emacs-mode-line-timer/")
;; (require 'mode-line-timer)
(load "~/.emacs.d/non-elpa/mode-line-timer")

; activate all the packages
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
