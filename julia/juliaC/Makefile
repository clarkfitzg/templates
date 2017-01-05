# Temporarily reset the library path. Wish I could find a better way to do this.
main: l2norm.jl l2norm.so
	LD_LIBRARY_PATH="${CURDIR}" julia l2norm.jl

l2norm.so: l2norm.c
	gcc -shared -o $@ -fPIC $< -g
