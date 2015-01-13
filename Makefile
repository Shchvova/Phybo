.DEFAULT=all
.DEFAULT_GOAL := all


all: out/phybo

glfw/src/libglfw3.a: glfw/src/*.c
	cd glfw && cmake  -DOPENGL_INCLUDE_DIR=/System/Library/Frameworks/OpenGL.framework/ .
	cd glfw && make glfw

out/phybo: src/main.cpp lua/src/liblua.a glfw/src/libglfw3.a
	clang -o $@ $< -Llua/src/ -llua

