
SRCDIR := schemas
OUTDIR := static/schemas
FLAG := -s --pad 10 --layout elk 
JOBS ?= 4

# Define input and output files
INPUT := $(wildcard $(SRCDIR)/*.d2)
OUTPUT := $(patsubst $(SRCDIR)/%.d2,$(OUTDIR)/%.svg,$(INPUT))


# Information about what this Makefile is doing
default:
	@echo "Available actions:"
	@echo "  make post-en - Create a new post in English"
	@echo "  make post-fr - Create a new post in French"
	@echo "  make hugo - build draft and launc hugo on 1313"
	@echo "  make diagrams - build d2 diagrams in static/schemas"
	@echo "  make clean - delete all the schema (to regenerate them)"


# Define the target for creating a new post in English
post-en:
	@echo "Enter the name of the new post in English: "  ; \
	read POST_NAME; \
	hugo new content/en/post/$$POST_NAME.md

# Define the target for creating a new post in French
post-fr:
	@echo "Enter the name of the new post in French: "  ; \
	read POST_NAME; \
	hugo new content/fr/post/$$POST_NAME.md

# Build the drafts, enable Git data, disable the cache
hugo:
	hugo server --enableGitInfo --disableFastRender -D 

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
.PHONY: clean diagrams hugo

# Allow users to specify the number of parallel jobs
.DEFAULT_GOAL := diagrams
diagrams: MAKEFLAGS += --jobs=$(JOBS)
