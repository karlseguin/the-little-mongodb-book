SOURCE_FILE_NAME = mongodb.markdown
BOOK_FILE_NAME = mongodb

PDF_BUILDER = pandoc
PDF_BUILDER_FLAGS = \
	--latex-engine xelatex \
	--template ../template/pdf-template.tex \
	--listings


en/mongodb.pdf:
	cd en && $(PDF_BUILDER) $(PDF_BUILDER_FLAGS) $(SOURCE_FILE_NAME) -o $(BOOK_FILE_NAME).pdf

en/mongodb.epub:	en/title.txt en/mongodb.markdown
	pandoc -o $@ $^

en/mongodb.mobi:	en/mongodb.epub
	kindleGen $^

clean:
	rm -f en/mongodb.pdf
