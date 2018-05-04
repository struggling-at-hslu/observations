PARAMS=--pdf-engine=xelatex -V documentclass=scrartcl -V papersize=a4 -V lang=de -V urlcolor=blue
FONTS=-V mainfont="EB Garamond" -V sansfont="Open Sans"
DATE=-V date="`date +'%d.%m.%Y'`"

modulbeschreibung.pdf: modulbeschreibung.md
	pandoc -s $(PARAMS) $(FONTS) $(DATE) $< -o $@ 
