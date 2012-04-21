## About ##
The Little MongoDB Book is a free book introducing MongoDB.

The book was written shortly after the creation of the [MongoDB interactive tutorial](http://mongly.com). As such, the two can be seen as complementary.

The book was written by [Karl Seguin](http://openmymind.net), with [Perry Neal](http://twitter.com/perryneal)'s assistance.

If you liked this book, maybe you'll also like [The Little Redis Book](http://openmymind.net/2012/1/23/The-Little-Redis-Book/).

## Translations ##

* [Russian](https://github.com/jsmarkus/the-little-mongodb-book/tree/master/ru)
* [Chinese](https://github.com/justinyhuang/the-little-mongodb-book-cn)
* [Italian](https://github.com/nicolaiarocci/the-little-mongodb-book/tree/master/it)
* [Spanish](https://github.com/uokesita/the-little-mongodb-book/tree/master/es)
* [Brazilian Portuguese](https://github.com/rafaelgou/the-little-mongodb-book/tree/master/pt_BR)
* Japanese [Version 1](http://www.cuspy.org/diary/2012-04-17) - [Version 2](https://github.com/ma2/the-little-mongodb-book)

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
	columns=onecolumn
	geometry=portrait
	nohyphenation=true


	markdown2pdf --xetex --template=template/xetex.template \
	-V paper=$paper -V hmargin=$hmargin -V vmargin=$vmargin \
	-V mainfont="$mainfont" -V sansfont="$sansfont" -V monofont="$monofont" \
	-V geometry=$geometry -V columns=$columns -V fontsize=$fontsize \
	-V nohyphenation=$nohyphenation --listings en/mongodb.markdown -o mongodb.pdf 

## Title Image ##
A PSD of the title image is included. The font used is [Comfortaa](http://www.dafont.com/comfortaa.font).
