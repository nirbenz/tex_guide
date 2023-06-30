#!/bin/bash
# created by Nir Ben-Zvi

DIST_YEAR=2023
TEX_LOCAL=/usr/local/texlive/texmf-local/
TEX_BINARIES=/usr/local/texlive/$DIST_YEAR/
mkdir -p tex_temp 
cd tex_temp
curl -O https://downloads.sourceforge.net/project/ivritex/culmus-latex/culmus-latex-0.7/culmus-latex-0.7-r1.tar.gz
tar xvf culmus-latex-0.7-r1.tar.gz
cd culmus-latex-0.7-r1
sudo make TEXMFDIR=$TEX_LOCAL
sudo make TEXMFDIR=$TEX_LOCAL install
cd examples
pdflatex culmus-ex.tex 
open culmus-ex.pdf 
cd ..
# rm -rf tex_temp/
exit
