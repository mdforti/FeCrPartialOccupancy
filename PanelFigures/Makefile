all: Figure_Occupancies.pdf Figure_alfa_gamma_angles_plots.pdf Figure_Workflow.pdf Figure_SigmaStructure.pdf Figure_SigmaStructure100.pdf Figure_SigmaPolyhedra.pdf

Figure_Occupancies.pdf: Figure_Occupancies.tex Figure_both_distributions_fo.pdf  Figure_both_distributions.pdf 
	pdflatex Figure_Occupancies.tex
	mv Figure_Occupancies.pdf ../

Figure_alfa_gamma_angles_plots.pdf:  Figure_alfa_gamma_angles_plots.tex Figure_alfa_gamma_angles_plots.pdf
	pdflatex Figure_alfa_gamma_angles_plots.tex
	mv Figure_alfa_gamma_angles_plots.pdf ../Figure_alfa_gamma_plots.pdf

Figure_Workflow.pdf: Figure_Workflow.tex 
	pdflatex Figure_Workflow.tex
	mv Figure_Workflow.pdf ../

sigma_structure.pgf: plot_sigma_structure.py POSCAR_sigma_proto.vasp
	/home/mariano/.local/share/mamba/envs/sigma_phases_fracture/bin/python3 plot_sigma_structure.py --view 001 --output sigma_structure.pgf

sigma_structure_100.pgf: plot_sigma_structure.py POSCAR_sigma_proto.vasp
	/home/mariano/.local/share/mamba/envs/sigma_phases_fracture/bin/python3 plot_sigma_structure.py --view 100 --output sigma_structure_100.pgf

Figure_SigmaStructure.pdf: Figure_SigmaStructure.tex sigma_structure.pgf
	pdflatex Figure_SigmaStructure.tex
	mv Figure_SigmaStructure.pdf ../

Figure_SigmaStructure100.pdf: Figure_SigmaStructure100.tex sigma_structure_100.pgf
	pdflatex Figure_SigmaStructure100.tex
	mv Figure_SigmaStructure100.pdf ../

Figure_SigmaPolyhedra.pdf: plot_sigma_polyhedra.py POSCAR_sigma_proto.vasp
	/home/mariano/.local/share/mamba/envs/sigma_phases_fracture/bin/python3 plot_sigma_polyhedra.py
	mv Figure_SigmaPolyhedra.pdf ../
