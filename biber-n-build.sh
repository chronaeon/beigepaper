#!/bin/bash
# Biber-N-Build, Version 3 

#  Warning:
#  -------
#  This build script requires the installation of biber, pdflatex, and the full texlive library on an Ubuntu or Debian based system to work. Most likely it can be built using the same packages on other systems, but such a build is presently untested.

mv beigepaper.tex foopaper.bar # Temporarily rename the source file.
rm beigepaper* 		       # Remove the previously built files.
mv foopaper.bar beigepaper.tex # Rename the source file.
pdflatex beigepaper.tex        # 1st build from source.
biber beigepaper 	       # Generate bibliography.
pdflatex beigepaper.tex        # 2nd build from source w/ bibliography.
makeindex beigepaper.idx       # Generate index.
pdflatex beigepaper.tex        # 3rd build from source w/ bibliography and index.
clear

if [ -e "beigepaper.pdf" ]     # Does beigepaper.pdf exist in this directory?
then
  echo "Beigepaper successfully built from LaTeX source."
  sleep 1.25
  xdg-open beigepaper.pdf
else
  echo "Beigepaper build failed. Check write access and dependencies."
fi

exit 
