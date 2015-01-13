.DEFAULT=all
.DEFAULT_GOAL := all


all: out/phybo

out/phybo: src/main.cpp lua/src/liblua.a
	clang -o $@ $< -Llua/src/ -llua

