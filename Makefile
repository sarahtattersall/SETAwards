PROJECT=report
OUTPUT=output
TIKZ_OUTPUT=tikz-output
TEX=pdflatex
BB=bibtex
FLAGS=-shell-escape -output-directory ${OUTPUT}

default:
	mkdir -p ${OUTPUT} ${TIKZ_OUTPUT}
	${TEX} ${FLAGS} ${PROJECT}

full: default
	${BB} ${OUTPUT}/${PROJECT}
	${TEX} ${FLAGS} ${PROJECT}
	${TEX} ${FLAGS} ${PROJECT}

clean:
	rm -rf ${OUTPUT}


clean-tikz:
	rm -rf ${TIKZ_OUTPUT}

clean-all: clean clean-tikz
