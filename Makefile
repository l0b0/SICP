SCHEME := /usr/bin/scheme

EXERCISES = $(wildcard ch*.scm)

.PHONY: all
all: run

include tools.mk

.PHONY: run
run: $(EXERCISES)

.PHONY: $(EXERCISES)
$(EXERCISES):
	$(SCHEME) --load $@
