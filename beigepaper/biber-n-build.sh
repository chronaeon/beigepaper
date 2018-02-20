pdflatex beigepaper.tex &&
biber beigepaper &&
pdflatex beigepaper.tex &&
makeindex beigepaper.idx &&
pdflatex beigepaper.tex
