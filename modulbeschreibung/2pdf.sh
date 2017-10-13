#!/bin/sh

INFILE=modulbeschreibung.md
OUTFILE=modulbeschreibung.pdf

pandoc -S -s \
    --variable papersize=a4 \
    --variable documentclass=scrartcl \
    --variable classoption=12pt \
    --variable fontfamily=helvet,ebgaramond \
    --variable lang=de \
    --variable author='Patrick Bucher' \
    --variable title='Inoffizielle Modulbeschreibungen' \
    --variable subtitle='Was die HSLU-Broschüren verschweigen' \
    --variable date="`date +'%d.%m.%Y'`" \
    $INFILE -o $OUTFILE
