all: Figure_Occupancies.pdf Figure_alfa_gamma_angles_plots.pdf

Figure_Occupancies.pdf: Figure_Occupancies.tex Figure_both_distributions_fo.pdf  Figure_both_distributions.pdf 
	pdflatex Figure_Occupancies.tex
	mv Figure_Occupancies.pdf ../

Figure_alfa_gamma_angles_plots.pdf:  Figure_alfa_gamma_angles_plots.tex Figure_alfa_gamma_angles_plots.pdf
	pdflatex Figure_alfa_gamma_angles_plots.tex
	mv Figure_alfa_gamma_angles_plots.pdf ../Figure_alfa_gamma_plots.pdf
