#!/bin/sh

INFILE=kontaktstudium.md
OUTFILE=kontaktstudium.pdf

pandoc -s \
    --pdf-engine=xelatex \
    --variable papersize=a4 \
    --variable documentclass=scrartcl \
    --variable classoption=12pt \
    --variable mainfont="EB Garamond" \
    --variable sansfont="Open Sans" \
    --variable monofont="DejaVu Sans Mono" \
    --variable lang=de \
    --variable author='Patrick Bucher' \
    --variable title='Kontaktstudium' \
    --variable subtitle='Wahres und Wahrscheinliches' \
    --variable date="`date +'%d.%m.%Y'`" \
    $INFILE -o $OUTFILE
