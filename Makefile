all:
	npm -g i .

version:
	./scripts/versions.js

help:
	./scripts/help.sh

doc:
	./node_modules/.bin/selleck --out ./output/

clean:
	rm -rRf ./output/*

api:
	./lib/cli.js

docs: clean help doc api

deploydocs:
	./scripts/docs.sh

test:
	./scripts/prep.sh
	cd ./tests/ && ../node_modules/.bin/yuitest ./parser.js ./builder.js

.PHONY: docs clean
