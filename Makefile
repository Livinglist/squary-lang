BUILD_DIR := build

default: squary

# Remove all build outputs and intermediate files.
clean:
	@ rm -rf $(BUILD_DIR)
	@ rm -rf gen

# Compile the C interpreter.
squary:
	@ $(MAKE) -f util/c.make NAME=squary MODE=release SOURCE_DIR=c
	@ cp build/squary squary # For convenience, copy the interpreter to the top level.

.PHONY: book c_chapters clean squary compile_snippets debug default diffs \
	java_chapters jlox serve split_chapters test test_all test_c test_java
