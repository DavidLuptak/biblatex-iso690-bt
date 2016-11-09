SOURCE=dean-project-defence
TEX=pdflatex -shell-escape

.PHONY: all implode pdf clean

# Use explicit order of the targets
# to keep the directory clean.
all:
	$(MAKE) implode
	$(MAKE) pdf
	$(MAKE) clean

# Use this pseudo-target for typesetting an output pdf file.
pdf: ${SOURCE}.pdf

# Typeset an output pdf file.
${SOURCE}.pdf:
	vlna ${SOURCE}.tex
	$(TEX) ${SOURCE}.tex
	biber ${SOURCE}.bcf
	$(TEX) ${SOURCE}.tex
	$(TEX) ${SOURCE}.tex

# Remove any auxiliary files.
clean:
	-rm *.aux *.log *.bbl *.blg *.bcf *.run.xml *.out *.toc *.nav *.snm *.vrb

# Remove any auxiliary files and the makeable pdf file.
implode: clean
	-rm ${SOURCE}.pdf
