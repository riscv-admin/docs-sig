
REG := \
	zabha-ext-reg

DST = $(addsuffix -table.adoc, $(REG))

%-table.adoc: %-wavedrom.json5 wavedrom-bitfield-to-adoc-table.j2
	jinja2 --strict -f json5 -o $@ wavedrom-bitfield-to-adoc-table.j2 $<

all: $(DST)
