
REG := \
	zabha-ext-reg

DST = $(addsuffix -table.adoc, $(REG))

%-table.adoc: %-wavedrom.json5 wavedrom-bitfield-to-adoc-table.j2
	jinja2 --strict -f json5 -o $@ wavedrom-bitfield-to-adoc-table.j2 $<

all: $(DST) build-html

build-html:
	asciidoctor -D build -r asciidoctor-diagram wavedrom-input.adoc
	asciidoctor -D build -r asciidoctor-diagram -a non-norm wavedrom-input.adoc -o wavedrom-input-non-norm.html
	xdg-open build/wavedrom-input.html
	xdg-open build/wavedrom-input-non-norm.html
