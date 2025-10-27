.PHONY: all clean

all: build/sshakya-cv.pdf build/sshakya-fullstack.pdf build/sshakya-Frontend.pdf

build/sshakya-cv.pdf: master-cv/SShakya-cv.tex master-cv/resume.cls
	mkdir -p build
	TEXINPUTS=./master-cv//: pdflatex -output-directory=build -jobname=sshakya-cv master-cv/SShakya-cv.tex

build/sshakya-fullstack.pdf: full-stack/SShakya-FullStack.tex full-stack/resume.cls
	mkdir -p build
	TEXINPUTS=./full-stack//: pdflatex -output-directory=build -jobname=sshakya-fullstack full-stack/SShakya-FullStack.tex

build/sshakya-Frontend.pdf: frontend/sshakya-Frontend.tex frontend/resume.cls
	mkdir -p build
	TEXINPUTS=./frontend//: pdflatex -output-directory=build -jobname=sshakya-Frontend frontend/sshakya-Frontend.tex

clean:
	rm -rf build
