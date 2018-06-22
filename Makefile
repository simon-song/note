SHELL=C:/Windows/System32/cmd.exe
all: note.pdf

note.pdf: note.tex *.tex
	pdflatex note
	pdflatex note
	pdflatex note

clean:
	rm.exe -f *.aux *.dvi *.idx *.lof *.log *.lot *.out *.toc *~
	rm.exe -f note.pdf

