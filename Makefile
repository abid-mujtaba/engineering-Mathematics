MAIN:=engineeringMathematics

IMG:=urdu-textbook
WORKDIR:=/tmp/build		# As defined in the Dockerfile


pdf:
	docker run -it --user 1000:1000 -v ${CURDIR}:${WORKDIR} ${IMG} xelatex ${MAIN}


shell:
	docker run -it -v ${CURDIR}:${WORKDIR} ${IMG} bash


build:
	docker build . -t ${IMG}


.PHONY: build shell test
