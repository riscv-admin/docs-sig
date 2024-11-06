
ORGS := \
		riscv \
		riscv-admin \
		riscv-android-src \
		riscv-collab \
		riscv-non-isa \
		riscv-software-src

TOOL := ./generate-manifests.sh
BUILD_DIR := generated
ALL_ORGS_XML := all-rvi-orgs.xml

ORGS_XML := $(addsuffix .xml, $(ORGS))

.PHONY: build-xml build-all-rvi-orgs-xml

default: build-xml $(ALL_ORGS_XML)

build-xml:
	$(MAKE) $(ORGS_XML)

all-orgs-xml:
	$(TOOL) $(BUILD_DIR)/$(ALL_ORGS_XML) $(ORGS)
	cp _common.xml $(BUILD_DIR)/.

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
