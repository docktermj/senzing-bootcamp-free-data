# Makefile for senzing-bootcamp-free-data

DATASOURCES_DIR := datasources
SOURCES := $(shell find $(DATASOURCES_DIR) -mindepth 1 -maxdepth 1 -type d ! -name '.template' | sort)

.PHONY: all download-all transform-all clean list help

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "  %-20s %s\n", $$1, $$2}'

all: download-all transform-all ## Download and transform all data sources

download-all: ## Download raw data for all sources
	@for src in $(SOURCES); do \
		echo "==> Downloading: $$(basename $$src)"; \
		(cd $$src && bash download.sh); \
	done

transform-all: ## Transform all sources to Senzing JSON
	@for src in $(SOURCES); do \
		echo "==> Transforming: $$(basename $$src)"; \
		(cd $$src && python3 transform.py); \
	done

download: ## Download a single source (usage: make download SOURCE=<name>)
	@if [ -z "$(SOURCE)" ]; then echo "Usage: make download SOURCE=<name>"; exit 1; fi
	cd $(DATASOURCES_DIR)/$(SOURCE) && bash download.sh

transform: ## Transform a single source (usage: make transform SOURCE=<name>)
	@if [ -z "$(SOURCE)" ]; then echo "Usage: make transform SOURCE=<name>"; exit 1; fi
	cd $(DATASOURCES_DIR)/$(SOURCE) && python3 transform.py

clean: ## Remove all downloaded and mapped data
	@for src in $(SOURCES); do \
		rm -rf $$src/data; \
	done
	@echo "Cleaned all data directories."

list: ## List available data sources
	@for src in $(SOURCES); do \
		echo "  $$(basename $$src)"; \
	done
