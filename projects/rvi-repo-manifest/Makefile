
ORGS := \
		riscv \
		riscv-admin \
		riscv-android-src \
		riscv-collab \
		riscv-non-isa \
		riscv-software-src

TOOL := ./generate-manifests.sh
BUILD_DIR := generated
ALL_ORGS_XML := default.xml

ORGS_XML := $(addsuffix .xml, $(ORGS))

.PHONY: build-xml build-all-rvi-orgs-xml

all: $(ALL_ORGS_XML)

build-xml:
	$(MAKE) $(ORGS_XML)

$(ALL_ORGS_XML):
	$(TOOL) $(BUILD_DIR)/$(ALL_ORGS_XML) $(ORGS)

%.xml:
	$(TOOL) $(BUILD_DIR)/$@ $*

clean:
	rm -rf $(BUILD_DIR)

# Debug variables
print-%:
	@echo $* = $($*)
