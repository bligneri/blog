
SRCDIR := d2_schemas
OUTDIR := static/schemas
FLAG := -d  --layout=elk 
JOBS ?= 4

# Define input and output files
INPUT := $(wildcard $(SRCDIR)/*.d2)
OUTPUT := $(patsubst $(SRCDIR)/%.d2,$(OUTDIR)/%.svg,$(INPUT))

# Rule to generate SVG file
$(OUTDIR)/%.svg: $(SRCDIR)/%.d2
	mkdir -p $(OUTDIR)
	d2 $(FLAG) $< $@

# Rule to generate all SVG files
diagrams: $(OUTPUT)

# Rule to clean generated files
clean:
	rm -rf $(OUTDIR)

# Declare 'clean' and 'diagrams' as phony targets
.PHONY: clean diagrams

# Allow users to specify the number of parallel jobs
.DEFAULT_GOAL := diagrams
diagrams: MAKEFLAGS += --jobs=$(JOBS)
