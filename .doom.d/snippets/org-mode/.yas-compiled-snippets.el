;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '(("<video" "<video style=\"center\" width=\"${1:700}\" ${2:autoplay }${3:controls}${4: loop}>\n <source src=`(let ((s (read-file-name \"Video file: \")))\n                (concat \"\\\"\"\n                        (substring s (string-match \"/img\" s))\n                        \"\\\" type=\\\"\"\n                        (substring (shell-command-to-string\n                          (concat \"mimetype -b 2>/dev/null \"\n                                  (shell-quote-argument s))) 0 -1)\n                        \"\\\">\"))`\nYour browser does not support the video tag.\n</video>\n$0" "video template" nil nil nil "/home/sasa/.doom.d/snippets/org-mode/video template" nil nil)
                       ("<jp" "#+BEGIN_SRC jupyter-python\n$0\n#+END_SRC" "src-jupyter-python" nil nil nil "/home/sasa/.doom.d/snippets/org-mode/src-jupyter-python" nil nil)
                       ("<s" "#+BEGIN_SRC ${1:$$(yas-auto-next (yas-completing-read \"Language: \" (mapcar 'car org-babel-load-languages))) }\n$0\n#+END_SRC" "source block" nil nil nil "/home/sasa/.doom.d/snippets/org-mode/source block" nil nil)
                       ("<spa" "#+REVEAL_HTML: <span class=\"${1:fragment}\" style=\"${2:font-size:50%}\">\n$0\n#+REVEAL_HTML: </span>" "reveal-html-span" nil nil nil "/home/sasa/.doom.d/snippets/org-mode/reveal-html-span" nil nil)
                       ("<div" "#+REVEAL_HTML: <div class=\"${1:row}\" style=\"$2\">\n$0\n#+REVEAL_HTML: </div>" "reveal-html-div" nil nil nil "/home/sasa/.doom.d/snippets/org-mode/reveal-html-div" nil nil)
                       ("<rco" "#+REVEAL_HTML: <div class=\"column\" style=\"width:${1:50}%;\">\n$0\n#+REVEAL_HTML: </div>\n#+REVEAL_HTML: <div class=\"column\" style=\"width:${1:$(- 100 (string-to-number yas-text))}%;\">\n\n#+REVEAL_HTML: </div>" "reveal-html-columns" nil nil nil "/home/sasa/.doom.d/snippets/org-mode/reveal-html-columns" nil nil)
                       ("3=" "#+$0" "hash-plus" 'auto nil nil "/home/sasa/.doom.d/snippets/org-mode/hash-plus" nil nil)
                       ("<header" "#+TITLE: ${1:$$(capitalize yas-text)}\n#+AUTHOR: ${2:`user-full-name`}\n#+DATE: ${3:`(format-time-string \"%Y:%m:%d\")`}\n#+OPTIONS: h:${4:3} num:${5:t||nil} toc:${6:t||nil}\n${7:#+PROPERTY: header-args:matlab :session *MATLAB* :results output :exports both :eval never-export :noweb yes}\n${8:#+PROPERTY: header-args:julia :session *Julia* :async yes :exports results :using Plots LinearAlgebra Printf DifferentialEquations :eval never-export}\n# #+SETUPFILE: https://fniessen.github.io/org-html-themes/setup/theme-readtheorg.setup\n# #+HTML_HEAD: <link rel=\"stylesheet\" type=\"text/css\" href=\"https://gongzhitaao.org/orgcss/org.css\"/>\n#+LATEX_CLASS: ${9:article}\n#+LATEX_CLASS_OPTIONS: ${10:[10pt]}\n#+LATEX_HEADER: ${11:\\input{${12:`(if (boundp 'my-preamble-file) my-preamble-file \"\")`}}}\n${13:#+BIBLIOGRAPHY: ${14:`(replace-regexp-in-string \"\\\\.bib$\" \"\" (car reftex-default-bibliography))`} plain}\n#+EXCLUDE_TAGS: noexport ignore\n#+STARTUP: ${15:latexpreview} ${16:hideblocks}\n\n$0\n" "Basic Org Header" nil nil nil "/home/sasa/.doom.d/snippets/org-mode/basic org header" nil nil)
                       ("<anki" "`(make-string (1+ (or (org-current-level) 0)) 42)` $1 :@anki:\n:PROPERTIES:\n:ANKI_NOTE_TYPE: `(completing-read \"Card type: \" '(\"Basic\" \"Cloze\") nil t)`\n:ANKI_DECK: Default\n:ANKI_TAGS: `(if-let ((all-tags (or (and (require 'anki-editor nil t)\n                                         (with-demoted-errors \"Using local tags: %S\"\n                                          (anki-editor-all-tags)))\n                                     (and (boundp 'my-anki-tags) my-anki-tags))))\n                    (mapconcat #'identity (completing-read-multiple \"Tags: \" all-tags) \" \") \"\")`\n:ID: `(org-id-get-create)`\n:END:\n`(make-string (+ 2 (or (org-current-level) 0)) 42)` Front\n${1:Question}\n`(make-string (+ 2 (or (org-current-level) 0)) 42)` Back\n$0" "anki" nil nil nil "/home/sasa/.doom.d/snippets/org-mode/anki" nil nil)))


;;; Do not edit! File generated at Thu Apr 14 17:30:25 2022
