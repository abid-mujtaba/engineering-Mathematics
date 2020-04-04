MAIN:=engineeringMathematics

IMG:=urdu-textbook
WORKDIR:=/tmp/build		# As defined in the Dockerfile


pdf:
	docker run -it --user 1000:1000 -v ${CURDIR}:${WORKDIR} ${IMG} xelatex ${MAIN}


shell:
	docker run -it -v ${CURDIR}:${WORKDIR} ${IMG} bash


build:
	docker build . -t ${IMG}


clean:
	rm -f ${MAIN}.pdf ${MAIN}.aux ${MAIN}.log


.PHONY: build shell test
