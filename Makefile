# This is a makefile
mypaper.pdf: mypaper.bib mypaper.tex Figs/fig1.pdf Figs/fig2.pdf  

# The target is 'mypaper.pdf and what follows after the ':' are dependences

    pdflatex mypaper  # run pdflatex
    bibtex mypaper    # run bibtex
    pdflatex mypaper  # run latex
    pdflatex mypaper  # run latex (again)  

Figs/fig1.pdf: R/fig1.R     
# Target is 'Figs/fig1.pdf' - it depends on an 'R' script called 'fig1.R'
    -mkdir Figs
    cd R;R CMD BATCH fig1.R # Go to R directory and execute the script to create fig1

Figs/fig2.pdf: R/fig2.R     
# same for fig2  
    cd R;R CMD BATCH fig2.R
