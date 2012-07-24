SOURCE_FILE_NAME = mongodb.markdown
BOOK_FILE_NAME = mongodb

PDF_BUILDER = pandoc
PDF_BUILDER_FLAGS = \
	--latex-engine xelatex \
	--template ../common/pdf-template.tex \
	--listings

EPUB_BUILDER = pandoc
EPUB_BUILDER_FLAGS = \
	--epub-cover-image

MOBI_BUILDER = kindlegen


en/mongodb.pdf:
	cd en && $(PDF_BUILDER) $(PDF_BUILDER_FLAGS) $(SOURCE_FILE_NAME) -o $(BOOK_FILE_NAME).pdf

en/mongodb.epub: en/title.png en/title.txt en/mongodb.markdown
	$(EPUB_BUILDER) $(EPUB_BUILDER_FLAGS) $^ -o $@

en/mongodb.mobi: en/mongodb.epub
	$(MOBI_BUILDER) $^

clean:
	rm -f */$(BOOK_FILE_NAME).pdf
	rm -f */$(BOOK_FILE_NAME).epub
	rm -f */$(BOOK_FILE_NAME).mobi
