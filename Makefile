all:
	@echo "Making xelatex......"
	xelatex main.tex
	xelatex main.tex
	bibtex main || true
	xelatex main.tex
	xelatex main.tex
	@echo "Done. Starting the browser......"
	open main.pdf&

test:
	xelatex main.tex
	open main.pdf&

clean:
	@echo "Cleaning up......"
	find . -name '*.aux' -exec rm -f {} \;
	rm -f *.bbl *.blg *.log *.out *.thm *.toc *.toe
	@echo "All done."
