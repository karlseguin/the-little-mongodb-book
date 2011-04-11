en/mongodb.epub:	en/title.txt en/mongodb.markdown
	pandoc -o $@ $^

en/mongodb.mobi:	en/mongodb.epub
	kindleGen $^