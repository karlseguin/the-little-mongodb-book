PDF_BUILDER = pandoc
PDF_BUILDER_FLAGS = \
	--latex-engine xelatex \
	--template template/pdf-template.tex \
	--listings


en/mongodb.pdf: en/mongodb.markdown
	$(PDF_BUILDER) $(PDF_BUILDER_FLAGS) $^ -o $@

en/mongodb.epub:	en/title.txt en/mongodb.markdown
	pandoc -o $@ $^

en/mongodb.mobi:	en/mongodb.epub
	kindleGen $^

clean:
	rm -f en/mongodb.pdf
