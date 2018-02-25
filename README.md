# Beigepaper 
A rewrite of the Yellowpaper in non-Yellowpaper syntax.

This project exists to make the [Ethereum Yellowpaper](http://gavwood.com/paper.pdf) readable by a broader audience. This is a beta release, so errata exist, and certain content still needs to be added. 

A fully compiled version of the Beigepaper exists in the main directory of this repository.

#[Read the most recent release of the Beigepaper](https://www.github.com/chronaeon/beigepaper/beigeaper.pdf)

###Build Instructions

If you're running Debian or Ubuntu derivatives:
```
sudo apt install pdflatex texlive* biber tex
```

NOTE: You need to install the full texlive library or else build problems will occur. Next:

```
./biber-n-build
```
will create the pdf file. 

Lastly, open the pdf with a reader that supports character rendering (e.g. evince on Linux) if you want to do text searches.

###FAQ

Q. How should I navigate the document?
A. Use the index and section headings.

Q. I'd like to contribute.
A. Follow the style guide (not yet published -- to be published soon.)

Q. Do I need to build the paper to view it?
A. No, just clone the repo or download the file directly: [beigepaper.pdf](https://www.github.com/chronaeon/beigepaper/beigepaper.pdf).

###Version Status

This is a beta release of the paper.

