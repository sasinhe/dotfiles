;; -*- no-byte-compile: t; -*-

;; [[file:config.org::*Rotate (window management)][Rotate (window management):1]]
(package! rotate :pin "4e9ac3ff800880bd9b705794ef0f7c99d72900a6")
;; Rotate (window management):1 ends here

;; [[file:config.org::*Emacs Everywhere][Emacs Everywhere:1]]
(package! emacs-everywhere :recipe (:local-repo "lisp/emacs-everywhere"))
;; Emacs Everywhere:1 ends here

;; [[file:config.org::*Very large files][Very large files:1]]
(package! vlf :recipe (:host github :repo "emacs-straight/vlf" :files ("*.el"))
  :pin "cacdb359f8c37c6e7e4c7937462b632d22462130")
;; Very large files:1 ends here

;; [[file:config.org::*EVIL][EVIL:2]]
(package! evil-escape :disable t)
;; EVIL:2 ends here

;; [[file:config.org::*Magit delta][Magit delta:2]]
;; (package! magit-delta :recipe (:host github :repo "dandavison/magit-delta") :pin "5fc7dbddcfacfe46d3fd876172ad02a9ab6ac616")
;; Magit delta:2 ends here

;; [[file:config.org::*Auto activating snippets][Auto activating snippets:1]]
(package! aas :recipe (:host github :repo "ymarco/auto-activating-snippets")
  :pin "566944e3b336c29d3ac11cd739a954c9d112f3fb")
;; Auto activating snippets:1 ends here

;; [[file:config.org::*Screenshot][Screenshot:1]]
(package! screenshot :recipe (:host github :repo "tecosaur/screenshot" :branch "master" :build (:not compile)))
;; Screenshot:1 ends here

;; [[file:config.org::*Etrace][Etrace:1]]
(package! etrace :recipe (:host github :repo "aspiers/etrace")
  :pin "2291ccf2f2ccc80a6aac4664e8ede736ceb672b7")
;; Etrace:1 ends here

;; [[file:config.org::*String inflection][String inflection:1]]
(package! string-inflection :pin "fd7926ac17293e9124b31f706a4e8f38f6a9b855")
;; String inflection:1 ends here

;; [[file:config.org::*Info colours][Info colours:1]]
(package! info-colors :pin "47ee73cc19b1049eef32c9f3e264ea7ef2aaf8a5")
;; Info colours:1 ends here

;; [[file:config.org::*Modus themes][Modus themes:1]]
(package! modus-themes :pin "5d35fed1ab7d2d59f64b2c5dcf77c05e64a0322e")
;; Modus themes:1 ends here

;; [[file:config.org::*Theme magic][Theme magic:1]]
(package! theme-magic :pin "844c4311bd26ebafd4b6a1d72ddcc65d87f074e3")
;; Theme magic:1 ends here

;; [[file:config.org::*Keycast][Keycast:1]]
(package! keycast :pin "72d9add8ba16e0cae8cfcff7fc050fa75e493b4e")
;; Keycast:1 ends here

;; [[file:config.org::*Screencast][Screencast:1]]
(package! gif-screencast :pin "5517a557a17d8016c9e26b0acb74197550f829b9")
;; Screencast:1 ends here

;; [[file:config.org::*Prettier page breaks][Prettier page breaks:1]]
(package! page-break-lines :recipe (:host github :repo "purcell/page-break-lines")
  :pin "cc283621c64e4f1133a63e0945658a4abecf42ef")
;; Prettier page breaks:1 ends here

;; [[file:config.org::*xkcd][xkcd:1]]
(package! xkcd :pin "688d0b4ea234adda0c05784e6bb22ab9d71f0884")
;; xkcd:1 ends here

;; [[file:config.org::*Selectric][Selectric:1]]
(package! selectric-mode :pin "1840de71f7414b7cd6ce425747c8e26a413233aa")
;; Selectric:1 ends here

;; [[file:config.org::*Wttrin][Wttrin:1]]
(package! wttrin :recipe (:local-repo "lisp/wttrin"))
;; Wttrin:1 ends here

;; [[file:config.org::*Spray][Spray:1]]
(package! spray :pin "74d9dcfa2e8b38f96a43de9ab0eb13364300cb46")
;; Spray:1 ends here

;; [[file:config.org::*Elcord][Elcord:1]]
(package! elcord :pin "70fd716e673b724b30b921f4cfa0033f9c02d0f2")
;; Elcord:1 ends here

;; [[file:config.org::*Systemd][Systemd:1]]
(package! systemd :pin "b6ae63a236605b1c5e1069f7d3afe06ae32a7bae")
;; Systemd:1 ends here

;; [[file:config.org::*Ebooks][Ebooks:1]]
(package! calibredb :pin "2f2cfc38f2d1c705134b692127c3008ac1382482")
;; Ebooks:1 ends here

;; [[file:config.org::*Ebooks][Ebooks:2]]
(package! nov :pin "8f5b42e9d9f304b422c1a7918b43ee323a7d3532")
;; Ebooks:2 ends here

;; [[file:config.org::*CalcTeX][CalcTeX:1]]
(package! calctex :recipe (:host github :repo "johnbcoughlin/calctex"
                           :files ("*.el" "calctex/*.el" "calctex-contrib/*.el" "org-calctex/*.el" "vendor"))
  :pin "67a2e76847a9ea9eff1f8e4eb37607f84b380ebb")
;; CalcTeX:1 ends here

(defadvice! +org-init-appearance-h--no-ligatures-a ()
  :after #'+org-init-appearance-h
  (set-ligatures! 'org-mode
    :name nil
    :src_block nil
    :src_block_end nil
    :quote nil
    :quote_end nil))

(after! spell-fu
  (cl-pushnew 'org-modern-tag (alist-get 'org-mode +spell-excluded-faces-alist)))

(package! org-appear :recipe (:host github :repo "awth13/org-appear")
  :pin "60ba267c5da336e75e603f8c7ab3f44e6f4e4dac")

(package! org-ol-tree :recipe (:host github :repo "Townk/org-ol-tree")
  :pin "207c748aa5fea8626be619e8c55bdb1c16118c25")

(package! ob-julia :recipe (:local-repo "lisp/ob-julia" :files ("*.el" "julia")))

(package! ob-http :pin "b1428ea2a63bcb510e7382a1bf5fe82b19c104a7")

(package! org-transclusion :recipe (:host github :repo "nobiot/org-transclusion")
  :pin "5cb94542e18722bf72a281441e944a8039b5301f")

(package! org-graph-view :recipe (:host github :repo "alphapapa/org-graph-view") :pin "233c6708c1f37fc60604de49ca192497aef39757")

(package! org-chef :pin "6a786e77e67a715b3cd4f5128b59d501614928af")

(package! org-pandoc-import :recipe
  (:local-repo "lisp/org-pandoc-import" :files ("*.el" "filters" "preprocessors")))

(package! org-glossary :recipe (:local-repo "lisp/org-glossary"))

(package! orgdiff :recipe (:local-repo "lisp/orgdiff"))

(package! org-music :recipe (:local-repo "lisp/org-music"))

(package! citar :pin "b6cd49ffb56824b8d1793b0c4268237b3d89fb45")
(package! citeproc :pin "65e1c52486d788b9b0d4baba63645453b4abcfca")
(package! org-cite-csl-activate :recipe (:host github :repo "andras-simonyi/org-cite-csl-activate") :pin "4fdb61c0f83b5d6db0d07dfd64d2a177fd46e931")

(package! org-super-agenda :pin "3108bc3f725818f0e868520d2c243abe9acbef4e")

(package! doct
  :recipe (:host github :repo "progfolio/doct")
  :pin "8464809754f3316d5a2fdcf3c01ce1e8736b323b")

(package! org-roam :disable t)

(package! org-roam-ui :recipe (:host github :repo "org-roam/org-roam-ui" :files ("*.el" "out")) :pin "9474a254390b1e42488a1801fed5826b32a8030b")
(package! websocket :pin "82b370602fa0158670b1c6c769f223159affce9b") ; dependency of `org-roam-ui'

;; (package! org-pretty-tags :pin "5c7521651b35ae9a7d3add4a66ae8cc176ae1c76")

(package! org-fragtog :pin "680606189d5d28039e6f9301b55ec80517a24005")

(package! engrave-faces :recipe (:local-repo "lisp/engrave-faces"))

(package! ox-chameleon :recipe (:local-repo "lisp/ox-chameleon"))

(package! ox-gfm :pin "99f93011b069e02b37c9660b8fcb45dab086a07f")

;; [[file:config.org::*LAAS][LAAS:1]]
(package! laas :recipe (:local-repo "lisp/LaTeX-auto-activating-snippets"))
;; LAAS:1 ends here

;; [[file:config.org::*Terminal viewing][Terminal viewing:1]]
(package! pdftotext :recipe (:local-repo "lisp/pdftotext"))
;; Terminal viewing:1 ends here

;; [[file:config.org::*Graphviz][Graphviz:1]]
(package! graphviz-dot-mode :pin "6e96a89762760935a7dff6b18393396f6498f976")
;; Graphviz:1 ends here

;; [[file:config.org::*Beancount][Beancount:1]]
(package! beancount :recipe (:host github :repo "beancount/beancount-mode")
  :pin "ea8257881b7e276e8d170d724e3b2e179f25cb77")
;; Beancount:1 ends here

(package! command-log-mode :recipe (:host github :repo "/lewang/command-log-mode"))

(package! org-download  :recipe (:host github :repo "/abo-abo/org-download"))

(package! annotate)

(package! go-translate)

(package! engine-mode)

(package! exec-path-from-shell)

(package! org-bullets)

(package! conda)

(package! simple-httpd)

(package! zmq)

(package! vundo
  :recipe (:host github
           :repo "casouri/vundo"))

(package! rotate :pin "4e9ac3ff800880bd9b705794ef0f7c99d72900a6")

(package! org-gtd)

(package! org-pretty-table
  :recipe (:host github :repo "Fuco1/org-pretty-table") :pin "7bd68b420d3402826fea16ee5099d04aa9879b78")

(package! org-appear :recipe (:host github :repo "awth13/org-appear")
  :pin "8dd1e564153d8007ebc4bb4e14250bde84e26a34")

(package! org-pretty-tags :pin "5c7521651b35ae9a7d3add4a66ae8cc176ae1c76")

(package! org-modern)

(package! org-caldav)

(package! org-special-block-extras)

(package! fontaine)

(package! cursory)

(package! helm-org-rifle)

(package! ispell)

(package! lsp-ltex)

(package! python-black)

(package! beacon)

(package! dirvish)

(package! ox-reveal)

(package! fira-code :recipe (:local-repo "lisp/fira-code" :files ("*.el" )))

(package! gnuplot)

(package! maxima)

(package! ox-ipynb :recipe (:host github :repo "/jkitchin/ox-ipynb"))
