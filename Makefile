INPUT_DIR=templates
OUTPUT_DIR=js_compiled
NAMESPACE=window.TEMPLATE

JADE = $(shell find $(INPUT_DIR)/*.jade)
JADE_JS = $(JADE:$(INPUT_DIR)/%.jade=$(OUTPUT_DIR)/%.jade.js)

all: $(OUTPUT_DIR) $(JADE_JS)

$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

$(OUTPUT_DIR)/%.jade.js: $(INPUT_DIR)/%.jade
	@echo "$(NAMESPACE) = $(NAMESPACE) || {};" > $@
	@echo -n "$(NAMESPACE)['$(notdir $<)'] = " >> $@
	@jade -c < $< --path $< >> $@
	@echo ";" >> $@
	@echo "compiled $<"

clean:
	rm -f $(JADE_JS)

.PHONY: clean
