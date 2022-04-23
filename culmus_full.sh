#!/bin/bash
# created by Nir Ben-Zvi

DIST_YEAR=2016
TEX_LOCAL=/usr/local/texlive/texmf-local/
TEX_BINARIES=/usr/local/texlive/$DIST_YEAR/
mkdir tex_temp 
cd tex_temp
wget https://downloads.sourceforge.net/project/ivritex/culmus-latex/culmus-latex-0.7/culmus-latex-0.7-r1.tar.gz
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

########### partial
DIST_YEAR=2016
TEX_LOCAL=/usr/local/texlive/texmf-local/
TEX_BINARIES=/usr/local/texlive/$DIST_YEAR/
CULMUS_DIR=~/fonts/culmus/
#
mkdir tex_temp 
cd tex_temp
mkdir -p $CULMUS_DIR
wget https://downloads.sourceforge.net/project/culmus/culmus/0.130/culmus-0.130.tar.gz
wget https://downloads.sourceforge.net/project/ivritex/culmus-latex/culmus-latex-0.7/culmus-latex-0.7_src.tar.gz
tar xvf culmus-latex-0.7_src.tar.gz
tar xvf culmus-0.130.tar.gz --strip 1 -C $CULMUS_DIR
cd culmus-latex-0.7
sudo make CULMUSDIR=$CULMUS_DIR TEXMFDIR=$TEX_LOCAL
sudo make CULMUSDIR=$CULMUS_DIR TEXMFDIR=$TEX_LOCAL install
cd examples
pdflatex culmus-ex.tex 
open culmus-ex.pdf 
