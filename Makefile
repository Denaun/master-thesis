thesis: header.mmd glossary.mmd abstract.mmd introduction.mmd \
  local_linear_model.mmd covariance_transformation.mmd applications.mmd \
  results.mmd conclusions.mmd metathesis.mmd appendix.mmd
	multimarkdown -t latex $^ -o thesis.tex && latexmk $@ -pdf

@Phony clean:
	find thesis.* ! -name "*.pdf" -type f -delete
	rm -f pdflatex*.fls
