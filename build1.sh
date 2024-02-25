pushd $1
  xelatex 8up-zine.tex
  xelatex 8up-zine-print-step1.tex
  xelatex 8up-zine-print-final.tex
  mv 8up-zine-print-final.pdf zine.pdf
  convert -background white -alpha remove -alpha off -units PixelsPerInch -density 300 zine.pdf zine.png
popd