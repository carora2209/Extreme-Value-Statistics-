(TeX-add-style-hook
 "show"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("powerdot" "blackslide" "style=simple")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("caption" "labelfont=bf" "textfont=sl" "tableposition=top" "scriptsize")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "powerdot"
    "powerdot10"
    "inputenc"
    "natbib"
    "graphicx"
    "multirow"
    "bbding"
    "manfnt"
    "fourier"
    "caption"
    "amsmath"
    "amsfonts"
    "amssymb"
    "amsthm"
    "mathrsfs")
   (TeX-add-symbols
    '("advice" 1))
   (LaTeX-add-labels
    "fig:fmadogram"
    "sec:simple-max-stable"
    "fig:leastSquares"
    "fig:pairLlik"
    "fig:prediction")
   (LaTeX-add-amsthm-newtheorems
    "thm"
    "lem"
    "prop"
    "cor"
    "defn"
    "conj"
    "exmp"
    "rem"
    "case"))
 :latex)

