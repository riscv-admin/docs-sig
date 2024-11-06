
ORGS := \
        riscv-collab \
		riscv-software-src \
		riscv \
		riscv-non-isa \
		riscv-admin \
		riscv-software-src \
		riscv-collab \
		riscv-android-src

TOOL := ./generate-manifests.sh
BUILD_DIR := generated
ALL_ORGS_XML := all-rvi-orgs.xml

ORGS_XML := $(addsuffix .xml, $(ORGS))

.PHONY: build-xml build-all-rvi-orgs-xml

default: build-all-rvi-orgs-xml

build-xml:
	$(MAKE) $(ORGS_XML)

build-all-rvi-orgs-xml:
	$(TOOL) $(BUILD_DIR)/$(ALL_ORGS_XML) $(ORGS)

%.xml:
	$(TOOL) $(BUILD_DIR)/$@ $*
	cp _common.xml $(BUILD_DIR)/.

clean:
	rm -rf $(BUILD_DIR/*.xml)

clean-all:
	rm -rf $(BUILD_DIR)

# Debug variables
print-%:
	@echo $* = $($*)
