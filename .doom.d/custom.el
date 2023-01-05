(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   '((output-pdf "Okular")
     (output-pdf "PDF Tools")
     ((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Evince")
     (output-html "xdg-open")
     (output-pdf "preview-pane")))
 '(org-agenda-files
   '("~/Dropbox/org/gtd/habits.org" "/home/sasa/org/gtd/agenda.org" "/home/sasa/org/gtd/inbox.org" "/home/sasa/org/gtd/org-gtd-tasks.org"))
 '(package-selected-packages
   '(org-pdftools lsp-pyright yasnippet-classic-snippets quarter-plane pyenv-mode pandoc-mode pandoc ox-pandoc org-latex-impatient org-gtd org-elp lsp-python-ms lsp-latex latex-preview-pane latex-math-preview latex-extra dap-mode conda blacken)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:slant italic))))
 '(font-lock-keyword-face ((t (:slant italic)))))
