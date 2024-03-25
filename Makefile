
# For Schema generation with d2
SCHEMA_SRCDIR := schemas
SCHEMA_OUTDIR := static/schema
SCHEMA_FLAG := -s --pad 10 --layout elk 
JOBS ?= 4

# Define input and output files
SCHEMA_INPUT := $(wildcard $(SCHEMA_SRCDIR)/*.d2
SCHEMA_OUTPUT := $(patsubst $(SCHEMA_SRCDIR)/%.d2,$(SCHEMA_OUTDIR)/%.svg,$(SCHEMA_INPUT))


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
dev:
	hugo server --enableGitInfo --disableFastRender -D 

# Build the static web page before shipping to codeberg
build: diagrams
	hugo --enableGitInfo 



# Rule to generate SVG file
$(SCHEMA_OUTDIR)/%.svg: $(SCHEMA_SRCDIR)/%.d2
	mkdir -p $(SCHEMA_OUTDIR)
	d2 $(SCHEMA_FLAG) $< $@

# Rule to generate all SVG files
diagrams: $(SCHEMA_OUTPUT)

# Rule to clean generated files
clean:
	rm -rf $(SCHEMA_OUTDIR)

# Declare 'clean' and 'diagrams' as phony targets
.PHONY: clean diagrams dev build default post-en post-fr

# Allow users to specify the number of parallel jobs
.DEFAULT_GOAL := diagrams
diagrams: MAKESCHEMA_FLAGS += --jobs=$(JOBS)
