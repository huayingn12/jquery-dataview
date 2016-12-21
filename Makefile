all: README.md jquery-dataview.min.js

README.md: jquery-dataview.js tool/gen-readme.pl
	perl tool/gen-readme.pl $< > $@

jquery-dataview.min.js: jquery-dataview.js
	PATH=./tool:$$PATH jsmin < $< > $@

