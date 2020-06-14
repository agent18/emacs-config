;; https://stackoverflow.com/questions/31079204/emacs-package-install-script-in-init-file


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/packages-init")

;----------- Self keybindings-------------------
;; https://github.com/bnbeckwith/wc-mode
;; wc-mode Suggested setting
(global-set-key "\C-cw" 'wc-mode)

(global-set-key "\C-cf" 'font-lock-mode)

;; Mode-line-timer suggested setting
(global-set-key "\C-ct" 'mode-line-timer-start)
(global-set-key "\C-cp" 'mode-line-timer-stop)

;; https://www.emacswiki.org/emacs/DedicatedKeys
(global-set-key (kbd "M-=") 'count-words)

;; General links for instructions on keybindings
;; https://emacs.stackexchange.com/questions/3488/define-controlshift-keys-without-kbd
;; https://emacs.stackexchange.com/questions/27926/avoiding-overwriting-global-key-bindings
;; info on key bindings
;; https://stackoverflow.com/a/2952021/5986651

(global-set-key (kbd "M-[") 'insert-pair)
(global-set-key (kbd "M-{") 'insert-pair)
(global-set-key (kbd "M-)") 'delete-pair)

(global-set-key (kbd "C-c b") 'insert-mycustomcommand)
(global-set-key (kbd "C-c r") 'tws-insert-r-chunk); not sure it will
						  ; work as function
						  ; is somewhere else.

;; ibuffer mode https://emacs.stackexchange.com/a/38665/17941
(global-set-key (kbd "C-x C-b") 'ibuffer)

;------------ setq and hooks---------------

(setq-default auto-fill-function 'do-auto-fill); https://www.gnu.org/software/emacs/manual/html_node/efaq/Turning-on-auto_002dfill-by-default.html

(setq python-shell-interpreter "/home/eghx/anaconda3/bin/python")
(setq python-shell-interpreter-args "--pylab")

(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

;; https://emacs.stackexchange.com/questions/13189/github-flavored-markdown-mode-syntax-highlight-code-blocks
(setq markdown-fontify-code-blocks-natively t)

;; https://www.gnu.org/software/auctex/manual/auctex.html#Quick-Start 	
(setq TeX-auto-save t)
(setq TeX-parse-self t)



;; (setq electric-pair-pairs

;;       `(
;; 	(?\" . ?\")
;;         (?\$ . ?\$)
;; 	(?\` . ?\`)))

(setq electric-pair-pairs
      `(
	(?\" . ?\")
	(?\` . ?\`))) ;; http://ergoemacs.org/emacs/emacs_insert_brackets_by_pair.html
		      ;; electric pair mode

;; https://www.emacswiki.org/emacs/AutoFillMode
;; paragraph filling and spell check mode 
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'abbrev-mode)
(add-hook 'text-mode-hook 'winner-mode)
(add-hook 'text-mode-hook 'electric-pair-mode)
(add-hook 'text-mode-hook 'drag-stuff-mode)
(add-hook 'text-mode-hook 'centered-window-mode)

(add-hook 'markdown-mode-hook 'abbrev-mode)
(add-hook 'markdown-mode-hook 'markdown-toggle-url-hiding)
(add-hook 'markdown-mode-hook ;; guessing
    '(lambda ()
       (local-set-key (kbd "C-c q") #'quote-and-autofill)));; making
							   ;; keybinding
							   ;; for the
							   ;; quote-and-autofill
							   ;; https://stackoverflow.com/a/14230685/5986651

(add-hook 'org-mode-hook 'org-indent-mode)

(add-hook 'ess-mode-hook 'linum-mode)

(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'TeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook #'latex-extra-mode); org mode type of
					      ; folding!
					      ; https://emacs.stackexchange.com/a/362/17941


(add-hook 'markdown-mode-hook ;; guessing
    '(lambda ()
       (local-set-key (kbd "C-c a") #'abbrev-mode))); abbrev-mode
						    ; toggle

'(wc-idle-wait 1); slows down markdown-mode
'(org-clock-mode-line-total (quote current))


(desktop-save-mode 1); https://stackoverflow.com/a/999721/5986651
		     ; opens emacs files you close with

(drag-stuff-global-mode 1)
(drag-stuff-define-keys)

;;-------------done using gui-------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-from-DVI "Dvips")
 '(TeX-engine (quote default))
 '(ibuffer-formats
   (quote
    ((mark modified read-only " "
	   (name 30 30 :left :elide)
	   " "
	   (size 9 -1 :right)
	   " "
	   (mode 16 16 :left :elide)
	   " " filename-and-process)
     (mark " "
	   (name 16 -1)
	   " " filename)))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :foreground "medium blue" :height 1.0))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :foreground "medium blue" :height 1.0))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :foreground "dark orange" :height 1.0))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :foreground "dark cyan" :height 1.0)))))


;;-----------Functions--------------------------
;; insert R chunk in RMD mode #polymode and all that shabang
;; https://emacs.stackexchange.com/questions/27405/insert-code-chunk-in-r-markdown-with-yasnippet-and-polymode

(defun tws-insert-r-chunk (header) 
  "Insert an r-chunk in markdown mode. Necessary due to interactions between polymode and yas snippet" 
  (interactive "sHeader: ") 
  (insert (concat "```{r " header "}\n\n```")) 
  (forward-line -1))

;; keybinding for tws-inster-r-chunk for latex but idee is same
;; https://stackoverflow.com/a/14230685/5986651 emacs wiki
;; (https://www.emacswiki.org/emacs?action=browse;oldid=KeyBindingDiscussion;id=ChoosingKeysToBind)

;; (eval-after-load 'rmd-mode
;;   '(define-key rmd-mode-map (kbd "C-c r")
;;      'tws-insert-r-chunk)) 



;; ######################################## beginning of function (word)[]
;; https://tex.stackexchange.com/questions/172754/inserting-custom-commands-with-emacsauctex
;; total time < 10 mins to get it done :)

(defun insert-mycustomcommand (beg end)
  (interactive "r") ;; take the region
  (save-excursion
    (goto-char beg)
    (insert "(")
    (forward-word)
    (insert "")
    (goto-char (+ end (length "(") 0))
    (insert ")[]")
    ))
    
;; insert macro for markdown mode! quotation and autofill!
;; https://emacs.stackexchange.com/a/71/17941

(fset 'quote-and-autofill
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([67108896 134217853 3 19 113 134217848 98 97 99 107 tab 119 97 114 100 tab 112 97 114 97 102 backspace 103 114 97 tab return 67108896 134217853 134217841] 0 "%d")) arg)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; abort emacs https://stackoverflow.com/a/41466688/5986651
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (defun ess-abort ()
;;   (interactive)
;;   (kill-process (ess-get-process)))
;; (define-key ess-mode-map (kbd "C-c C-a") 'ess-abort)
;; (define-key inferior-ess-mode-map (kbd "C-c C-a") 'ess-abort)


;;;;;;;;;;;;;;;;;;;; Abbrev mode to not work with underscore and . ;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;; https://emacs.stackexchange.com/a/651/17941;;;;;;;;;;;;;;;
;; (defun self-insert-no-abbrev ()
;;   (interactive)
;;   (let ((abbrev-mode nil))
;;     (call-interactively 'self-insert-command)))

;; (global-set-key "_" #'self-insert-no-abbrev)
;; (global-set-key ";" #'self-insert-no-abbrev)

;;;;;;;;;;;;;; drag-stuff







