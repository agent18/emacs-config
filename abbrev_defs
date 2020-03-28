;;-*-coding: utf-8;-*-
(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'Custom-mode-abbrev-table '())

(define-abbrev-table 'Info-edit-mode-abbrev-table '())

(define-abbrev-table 'Rd-mode-abbrev-table
  '(
    ("`ag" "\\arguments" nil 0)
    ("`al" "\\alias" nil 0)
    ("`au" "\\author" nil 0)
    ("`bf" "\\bold" nil 0)
    ("`co" "\\code" nil 0)
    ("`de" "\\describe" nil 0)
    ("`dn" "\\description" nil 0)
    ("`dt" "\\details" nil 0)
    ("`em" "\\emph" nil 0)
    ("`en" "\\enumerate" nil 0)
    ("`ex" "\\examples" nil 0)
    ("`fi" "\\file" nil 0)
    ("`fo" "\\format" nil 0)
    ("`it" "\\item" nil 0)
    ("`iz" "\\itemize" nil 0)
    ("`kw" "\\keyword" nil 0)
    ("`li" "\\link" nil 0)
    ("`me" "\\method" nil 0)
    ("`na" "\\name" nil 0)
    ("`no" "\\note" nil 0)
    ("`re" "\\references" nil 0)
    ("`sa" "\\seealso" nil 0)
    ("`se" "\\section" nil 0)
    ("`so" "\\source" nil 0)
    ("`ss" "\\subsection" nil 0)
    ("`sy" "\\synopsis" nil 0)
    ("`ta" "\\tabular" nil 0)
    ("`ti" "\\title" nil 0)
    ("`us" "\\usage" nil 0)
    ("`va" "\\value" nil 0)
   ))

(define-abbrev-table 'TeX-error-overview-mode-abbrev-table '())

(define-abbrev-table 'TeX-output-mode-abbrev-table '())

(define-abbrev-table 'bibtex-mode-abbrev-table '())

(define-abbrev-table 'calculator-mode-abbrev-table '())

(define-abbrev-table 'calendar-mode-abbrev-table '())

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

(define-abbrev-table 'context-mode-abbrev-table '())

(define-abbrev-table 'css-mode-abbrev-table '())

(define-abbrev-table 'debugger-mode-abbrev-table '())

(define-abbrev-table 'diff-mode-abbrev-table '())

(define-abbrev-table 'doctex-mode-abbrev-table '())

(define-abbrev-table 'edit-abbrevs-mode-abbrev-table '())

(define-abbrev-table 'eieio-custom-mode-abbrev-table '())

(define-abbrev-table 'elisp-byte-code-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'ert-results-mode-abbrev-table '())

(define-abbrev-table 'ert-simple-view-mode-abbrev-table '())

(define-abbrev-table 'ess-julia-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table '())

(define-abbrev-table 'gfm-mode-abbrev-table '())

(define-abbrev-table 'gfm-view-mode-abbrev-table '())

(define-abbrev-table 'global-abbrev-table
  '(
    ("0n" "[0]" nil 23)
    ("10n" "[10]" nil 74)
    ("11n" "[11]" nil 22)
    ("12n" "[12]" nil 35)
    ("13n" "[13]" nil 16)
    ("14n" "[14]" nil 18)
    ("15n" "[15]" nil 17)
    ("1n" "[1]" nil 611)
    ("2n" "[2]" nil 601)
    ("3n" "[3]" nil 422)
    ("4n" "[4]" nil 222)
    ("5n" "[5]" nil 185)
    ("6n" "[6]" nil 120)
    ("7n" "[7]" nil 106)
    ("80k" "80khours" nil 107)
    ("8n" "[8]" nil 70)
    ("97k" "[97k](https://80000hours.org/2016/08/reflections-from-a-givewell-employee/)<span>$</span>" nil 6)
    ("9n" "[9]" nil 56)
    ("NA" "N/A" nil 9)
    ("SV" "Silicon Valley" nil 20)
    ("ainta" "*A-is-not-the-answer*" nil 0)
    ("bel" "*belief-about-right-wrong*" nil 4)
    ("ch" "**Checklist**: no; neither; " nil 239)
    ("cl" "**Claims**:" nil 436)
    ("cuz" "*because-should-due-to*" nil 17)
    ("def" "**Definition**:" nil 52)
    ("deun" "*definition-unclear*" nil 22)
    ("dol" "<span>$</span>" nil 45)
    ("ex" "**Example**: 

**Definition**: 

**Checklist**: 
" nil 173)
    ("exmade" "*example-matching-definition*" nil 2)
    ("exmasu" "*example-matching-subject*" nil 23)
    ("fa" "*failed*" nil 79)
    ("famo" "**Failure-mode**:" nil 0)
    ("fu" "*future-with-no-ex*" nil 16)
    ("fwex" "*future-with-example*" nil 3)
    ("fwoex" "*future-without-example*" nil 12)
    ("hasex" "*unsure-if-it-has-example*" nil 1)
    ("hoto" "**How-to-tackle**:" nil 0)
    ("imp" "*a-is-important*" nil 0)
    ("inex" "*incomplete-example*" nil 0)
    ("isex" "*unsure-if-it-is-example*" nil 0)
    ("mico" "*missed-comparison*" nil 3)
    ("miif" "*missed-if*" nil 0)
    ("mus" "*must*" nil 1)
    ("noex" "*no-example*" nil 135)
    ("oft" "*often*" nil 1)
    ("pat" "**Pattern**:" nil 76)
    ("pr" "**Predicate**:" nil 63)
    ("ru" "*cannot-identify-if-running*" nil 0)
    ("sel" "*self-claim-with-0-ex*" nil 5)
    ("stt" "**Stats**:" nil 0)
    ("su" "**Subject**:" nil 68)
    ("subj" "**Subject**: 

**Predicate**: 

**Example**: 

**Definition**: 

**Checklist**: yes; false; none; not-chapter; not-running; none " nil 144)
    ("suprsp" "*subject-predicate-split*" nil 8)
    ("te" "*testable*" nil 9)
    ("ti" "*time*" nil 31)
    ("un" "*unsure*" nil 45)
    ("xpatb" "*X-prefers-A-to-B*" nil 0)
   ))

(define-abbrev-table 'grep-mode-abbrev-table '())

(define-abbrev-table 'help-mode-abbrev-table '())

(define-abbrev-table 'html-mode-abbrev-table '())

(define-abbrev-table 'inferior-julia-mode-abbrev-table '())

(define-abbrev-table 'julia-mode-abbrev-table '())

(define-abbrev-table 'latex-mode-abbrev-table '())

(define-abbrev-table 'lisp-mode-abbrev-table '())

(define-abbrev-table 'markdown-mode-abbrev-table '())

(define-abbrev-table 'markdown-view-mode-abbrev-table '())

(define-abbrev-table 'message-mode-abbrev-table '())

(define-abbrev-table 'messages-buffer-mode-abbrev-table '())

(define-abbrev-table 'nxml-mode-abbrev-table '())

(define-abbrev-table 'occur-edit-mode-abbrev-table '())

(define-abbrev-table 'occur-mode-abbrev-table '())

(define-abbrev-table 'org-mode-abbrev-table '())

(define-abbrev-table 'outline-mode-abbrev-table '())

(define-abbrev-table 'package-menu-mode-abbrev-table '())

(define-abbrev-table 'plain-tex-mode-abbrev-table '())

(define-abbrev-table 'poly-fallback-mode-abbrev-table '())

(define-abbrev-table 'poly-head-tail-mode-abbrev-table '())

(define-abbrev-table 'process-menu-mode-abbrev-table '())

(define-abbrev-table 'prog-mode-abbrev-table '())

(define-abbrev-table 'scss-mode-abbrev-table '())

(define-abbrev-table 'select-tags-table-mode-abbrev-table '())

(define-abbrev-table 'sgml-mode-abbrev-table '())

(define-abbrev-table 'shell-mode-abbrev-table '())

(define-abbrev-table 'slitex-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'speedbar-mode-abbrev-table '())

(define-abbrev-table 'tabulated-list-mode-abbrev-table '())

(define-abbrev-table 'tar-mode-abbrev-table '())

(define-abbrev-table 'tex-mode-abbrev-table '())

(define-abbrev-table 'tex-shell-abbrev-table '())

(define-abbrev-table 'texinfo-mode-abbrev-table '())

(define-abbrev-table 'text-mode-abbrev-table '())

(define-abbrev-table 'url-cookie-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-edit-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-git-region-history-mode-abbrev-table '())

(define-abbrev-table 'xref--xref-buffer-mode-abbrev-table '())

