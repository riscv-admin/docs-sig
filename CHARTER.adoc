# Documentation SIG Charter

The Documentation SIG provides a global forum for technical and strategic input into the activities and technologies being leveraged to enable the seamless creation and distribution of RISC-V documentation.

## Definitions

## Background

The initiation of the overall RISC-V project and documentation of the core Unprivileged and Privileged Instruction Set Architectures consisted of a standard set of two documents authored in the LaTex markup language.  The LaTeX markup language, although extremely powerful and a standard for scientific documentation in academia, brings with it a level of complexity and conversion limitations that make it less than ideal for promotion of documentation contributions from the wider community as well as distribution of documentation in various formats such as PDF and HTML.  The RISC-V team initiated a project to convert the current LaTeX based documentation to the more flexible markup language, ASCIIDOC.  This effort has resulted in a documentation toolchain utilizing Pandoc for conversion of asciidoc documentation to various formats.

## Scope

The scope of the Documentation SIG will include:

* LaTeX Conversion including the Unprivileged ISA specification, Privileged ISA specification, and templated versions of all extension documentation.

* A CI/CD effort including automated specification building leveraging GitHub workflows, ISA Manual PR structure, ISA Manual Build & Release, and a RISC-V glossary.

* A Readability effort including management of errata/changelogs/versioning, organization of documentation into books, standardization of documentation introductions, navigation, prose and style, and ISA specific text types (SAIL).

* Development and maintenance of the documentation repository including RISC-V specification publishing, repository navigation and a whitepapers workflow.

## Deliverables

The known deliverables at this time are the converted Unprivileged and Privileged ISA specification to asciidoc format.

2024 Goals inclue:

* Community - continuously improve spec quality
* Consistency - the specifications are "one voice"
* Simplicity - the guidelines assist with process
* Efficiency - the tools enable you to work more seamlessly
* Predictability - the publishing timeline and current status is available

Proposed Features include:

* Editing
** Update docs template
** Edit doc to be more "one voice"
** Develop styling for HTML

* Tools
** HTML framework & hosting
** Vale, linters
** HitHub checks
** Stale bot for GitHub
** Machine cunsumable specs
** SAIL code in AsciiDoc
** Acronym expander

* Community
** Doc Sig startup
** Request help from Docs Team
** Create documentation office hours
** Relationship with RISE

* Guidelines
** Writing guidelines
** How do I write and extension?
** Write for accessibility and translation
** Process for creating graphics
** Naming conventions and versioning

* Process
** How do we work?
** Metrics tracking
** Develop "library" web page
** Repo issue/PR cleanup
** Glossary
.