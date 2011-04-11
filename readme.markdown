## About ##
The Little MongoDB Book is a free book introducing MongoDB.

The book was written shortly after the creation of the [MongoDB interactive tutorial](http://mongly.com). As such, the two can be seen as complementary.

The book was written by [Karl Seguin](http://openmymind.net), with [Perry Neal](http://twitter.com/perryneal)'s assistance.

## License ##
The book is freely distributed under the  [Attribution-NonCommercial 3.0 Unported license](<http://creativecommons.org/licenses/by-nc/3.0/legalcode>).

## Formats ##
The book is written in [markdown](http://daringfireball.net/projects/markdown/) and converted to PDF using [PanDoc](http://johnmacfarlane.net/pandoc/). A few LaTex specific commands have been placed in the markdown file to help with pdf-generation (namely for the title page and to create page breaks between chapters).

The LaTex template makes use of [Lena Herrmann's JavaScript highlighter](http://lenaherrmann.net/2010/05/20/javascript-syntax-highlighting-in-the-latex-listings-package).

Kindle and ePub format provided using [PanDoc](http://johnmacfarlane.net/pandoc/). Run make en/mongodb.mobi to generate.

## Generating the PDF ##
I use a variation of <https://github.com/claes/pandoc-templates> to generate the pdf:

	#!/bin/sh
	paper=a4paper
	hmargin=3cm
	vmargin=3cm
	fontsize=11pt

	mainfont=Verdana
	sansfont=Tahoma
	monofont="Courier New"
	language=english
	nohyphenation=false
	columns=onecolumn
	geometry=portrait
	nohyphenation=true


	markdown2pdf --xetex --template=template/xetex.template \
	-V paper=$paper -V hmargin=$hmargin -V vmargin=$vmargin \
	-V mainfont="$mainfont" -V sansfont="$sansfont" -V monofont="$monofont" \
	-V geometry=$geometry -V alignment=$alignment -V columns=$columns \
	-V fontsize=$fontsize -V nohyphenation=$nohyphenation \
	-V toc=$toc --listings en/mongodb.markdown -o mongodb.pdf 

## Title Image ##
A PSD of the title image is included. The font used is [Comfortaa](http://www.dafont.com/comfortaa.font).
