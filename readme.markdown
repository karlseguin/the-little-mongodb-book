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
The book is freely distributed under the [Attribution-NonCommercial 3.0 Unported license](<http://creativecommons.org/licenses/by-nc/3.0/legalcode>).

## Formats ##
The book is written in [Markdown](http://daringfireball.net/projects/markdown/) and converted to PDF using [Pandoc](http://johnmacfarlane.net/pandoc/).

The TeX template makes use of [Lena Herrmann's JavaScript highlighter](http://lenaherrmann.net/2010/05/20/javascript-syntax-highlighting-in-the-latex-listings-package).

Kindle and ePub format provided using [Pandoc](http://johnmacfarlane.net/pandoc/).

## Generating books ##
Run specific Make target to get specific format:

* `make en/mongodb.pdf`
* `make en/mongodb.epub`
* `make en/mongodb.mobi`

Pandoc uses TeX as a buffer tool to generate PDF files, so you need to have TeX installed (packages `texlive-bin`, `texlive-core`, `texlive-latexextra` would be enough).

## Title Image ##
A PSD of the title image is included. The font used is [Comfortaa](http://www.dafont.com/comfortaa.font).
