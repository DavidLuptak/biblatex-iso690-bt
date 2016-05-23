SOURCE=thesis
TEX=pdflatex -shell-escape

.PHONY: all remove_old_pdf pdf clean

all: remove_old_pdf pdf clean
pdf: ${SOURCE}.pdf

remove_old_pdf:
	-rm ${SOURCE}.pdf

${SOURCE}.pdf:
	vlna ${SOURCE}.tex
	$(TEX) ${SOURCE}.tex
	biber ${SOURCE}.bcf
	$(TEX) ${SOURCE}.tex
	makeglossaries $(SOURCE)
	$(TEX) ${SOURCE}.tex
	$(TEX) ${SOURCE}.tex

clean:
	-rm *.aux *.log *.bbl *.blg *.bcf *.run.xml *.out *.lof *.lot *.toc *.acn *.acr *.alg *.xdy
