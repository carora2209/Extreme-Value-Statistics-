(TeX-add-style-hook
 "showv2"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("powerdot" "mode=present" "style=simple" "paper=screen")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("natbib" "square") ("caption" "labelfont=bf" "textfont=sl" "tableposition=top" "scriptsize")))
   (TeX-run-style-hooks
    "latex2e"
    "powerdot"
    "powerdot10"
    "inputenc"
    "natbib"
    "bibentry"
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
    '("reminder" 1)
    '("advice" 1))
   (LaTeX-add-labels
    "fig:fmadogram"
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

