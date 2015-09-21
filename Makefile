GULP=@./node_modules/.bin/gulp

install:
	@npm install

build: clean install
	$(GULP) build

clean:
	@rm -rf ./build/*

publish: build
	@npm publish

zip: build
	$(GULP) pack

.PHONY: build install publish clean zip
