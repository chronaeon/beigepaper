pdflatex off-whitepaper.tex &&
biber off-whitepaper &&
pdflatex off-whitepaper.tex &&
makeindex off-whitepaper.idx &&
pdflatex off-whitepaper.tex
