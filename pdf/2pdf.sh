#!/bin/sh

INFILE=Kontaktstudium.md
OUTFILE=Kontaktstudium.pdf

pandoc -S -s \
    --variable papersize=a4 \
    --variable documentclass=scrartcl \
    --variable classoption=12pt \
    --variable fontfamily=helvet,ebgaramond \
    --variable lang=de \
    --variable author='Patrick Bucher' \
    --variable title='Kontaktstudium' \
    --variable subtitle='Wahres und Wahrscheinliches' \
    --variable date="`date +'%d.%m.%Y'`" \
    $INFILE -o $OUTFILE
