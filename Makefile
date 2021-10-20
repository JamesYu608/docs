.PHONY: build
build: $(shell find source -type f)
	@asciidoctor -v \
		-r asciidoctor-diagram \
		-a experimental \
		-a toc=left \
		-a imagesdir=images \
		-a source-highlighter=highlight.js \
		-a icons=font \
		-a sectlinks \
		-a prewrap! \
		-a docinfo=shared-footer \
		-D build source/index.adoc
	@echo Built at $(shell date)

.PHONY: clean
clean:
	rm -rf build/*