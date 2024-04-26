# Draft design doc

## Overview

Currently spec authors don't have much direction on the format to put their CSR definitions in or any workflow suggestions to then render those definitions in the spec (except perhaps using wavedrom or an asciidoc table).

Early on, one spec [riscv-debug-spec XML](https://github.com/kbroch-rivosinc/riscv-debug-spec/tree/main/xml) did define a CSR format and create tooling to generate outputs. No other specs have adopted this format.

This doc at a minimum hopes to give spec authors more options/direction on how to do this and preferably defines a common format for all to use.

### Why standardize

- consistency across specs (for authors and tooling)
- allow for generation of multiple outputs (wavedrom, table, src headers, etc)

## Requirements/Features

- human read/writeable
  - concise definitions (ex: allow for arrayed registers)
  - allow body/description of register to span multiple lines
  - possibly multiple input options (xmlx, etc)
- machine readable
- CSR format should provide all the parameters needed to express any CSR
- use existing OSS CSR definitions if possible
- use existing OSS tooling if possible
- linting
- validation

## Design

design questions/considerations:

- inventory how spec CSRs are currently defined
- can we use existing definitions (wavedrom or riscv-debug-spec XML)
- tooling to convert from existing CSR format (see above) to new format

explorations:

- convert riscv-debug-spec XML into different formats
- convert wavedrom bitfield into different formats
- convert bytefield-svg into different formats
- generate wavedrom, bytefield-svg, asciidoc-table outputs

## References

### CSR

formats:

- [riscv-debug-spec XML](https://github.com/kbroch-rivosinc/riscv-debug-spec/tree/main/xml)
- [wavedrom/bitfield](https://github.com/wavedrom/bitfield)
- [IP-XACT](https://www.accellera.org/downloads/standards/ip-xact)
- [SystemRDL](https://www.accellera.org/downloads/standards/systemrdl)
- [Open Titan's HJSON](https://opentitan.org/book/doc/contributing/style_guides/hjson_usage_style.html)
- https://github.com/esynr3z/corsair
- https://github.com/Juniper/open-register-design-tool
- [nasa-jpl regvue JSON](https://github.com/nasa-jpl/regvue/blob/main/schema/register-description-format.adoc)
- https://github.com/sifive/duh
- https://github.com/Deep-Symmetry/bytefield-svg

tooling:

- [PeakRDL](https://peakrdl.readthedocs.io/en/latest/)
- [ipyxact](https://github.com/olofk/ipyxact)
- [riscv-debug-spec registers.py](https://github.com/kbroch-rivosinc/riscv-debug-spec/blob/main/registers.py)
- https://github.com/rggen/rggen

### General

- [jsonnet](https://jsonnet.org/)
- [json5](https://json5.org/)
- validation
  - https://docs.python-cerberus.org/index.html
  - https://docs.pydantic.dev/latest/
