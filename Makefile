LATEX = pdflatex 
BIB = bibtex

SUPSOURCES = 
#Fe-Mo_KernelRidge_learning_curves_tovote.pdf Fe-Mo_MLP_learning_curves_tovote.pdf Fe-Mo_RandomForest_learning_curves_tovote.pdf

all: main.pdf suplementary.pdf PanelFigures

main.pdf: main.aux main.bbl 
	${LATEX} main.tex

main.aux: main.tex suplementary.aux main.bbl
	${LATEX} main.tex

suplementary.pdf: suplementary.aux
	${LATEX} suplementary.tex 

suplementary.aux: suplementary.tex main.bbl ${SUPSOURCES}
	${LATEX} suplementary.tex 

main.bbl: main.aux main.bib
	${BIB} main.aux

main.aux: main.tex Figure*
	${LATEX} main.tex

PanelFigures:
	make -C PanelFigures

.PHONY: PanelFigures
	





#Figures: epsfigures
#	make -C Figures
#	cp Figures/SketchBOPModels.pdf Figure_SketchBOPModels.pdf
#	cp Figures/Figure_distribution_totens.png  Figure_distribution_totens.png 
#	cp Figures/Figure_distributions_volumes.png Figure_distributions_volumes.png 
#	cp Figures/Figure_distributions_bulkmodulus.png Figure_distributions_bulkmodulus.png 
#	cp Figures/Figure_counts_per_phase.png Figure_counts_per_phase.png 

#Sketches: Sketches
#	make -C Sketches


#epsfigures: Figures/Fe-Mo_distributions_bn.eps #Figures/Fe-Mo_OptimalRegresorComparison.eps Figures/Fe-Mo_KernelRidge_LearningCurves.eps
#	epstopdf Figures/Fe-Mo_distribution_an.eps --outfile Figure_distribution_an.pdf
#	epstopdf Figures/Fe-Mo_distributions_bn.eps --outfile Figure_distribution_bn.pdf
##	epstopdf Figures/Fe-Mo_OptimalRegresorComparison.eps --outfile Figure_OptimalRegresorComparison.pdf
#	epstopdf Figures/Fe-Mo_KernelRidge_LearningCurves.eps --outfile Figure_KernelRidge_LearningCurves.pdf
##	epstopdf Figures/Fe-Mo_MLP_ConvxHullsFinal.eps --outfile Figure_ConvexHullFinal.pdf
#	epstopdf Figures/Fe-Mo_violinerrors_EF_fmbcc_testing.eps --outfile Figure_violinerrors_byphase.pdf

#.PHONY: Figures


clean:
	find -iname \*.aux\
	-o -iname \*.out \
	-o -iname \*blx.bib \
	-o -iname \*log \
	-o -iname \*.nav \
	-o -iname \*.blg \
	-o -iname \*blg \
	-o -iname \*-?.asy \
	-o -iname \*.prc \
	-o -iname \*.pre \
	-o -iname \*.pbsdat\
	-o -iname BZ-1.tex \
	-o -iname \*.bbl\
	| xargs -I{} rm {}
