# Makefile for SUES-Beamer

# Basename of ppt
PPTFILE = slide

# Option for latexmk
LATEXMK_OPT = -time -file-line-error -halt-on-error -interaction=nonstopmode
LATEXMK_OPT_PVC = $(LATEXMK_OPT) -pvc

# make deletion work on Windows
ifdef SystemRoot
	RM = del /Q
	OPEN = start
else
	RM = rm -f
	OPEN = open
endif

.PHONY : all pvc view wordcount clean cleanall FORCE_MAKE

all : $(PPTFILE).pdf

$(PPTFILE).pdf : $(PPTFILE).tex FORCE_MAKE
	@latexmk -pdfxe $(LATEXMK_OPT) $<

pvc : $(PPTFILE).tex
	@latexmk -pdfxe $(LATEXMK_OPT_PVC) $(PPTFILE)

view : $(PPTFILE).pdf
	$(OPEN) $<

wordcount : $(PPTFILE).tex
	@if grep -v ^% $< | grep -q '\\documentclass\[[^\[]*en'; then \
		texcount $< -inc -char-only | awk '/total/ {getline; print "英文字符数\t\t\t:",$$4}'; \
	else \
		texcount $< -inc -ch-only   | awk '/total/ {getline; print "纯中文字数\t\t\t:",$$4}'; \
	fi
	@texcount $< -inc -chinese | awk '/total/ {getline; print "总字数（英文单词 + 中文字）\t:",$$4}'

clean :
	-@latexmk -pdfxe -c -silent $(PPTFILE).tex 2> /dev/null

cleanall :
	-@latexmk -pdfxe -C -silent $(PPTFILE).tex 2> /dev/null
