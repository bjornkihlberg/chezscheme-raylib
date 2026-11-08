.PHONY: generate
generate: ./src/raylib/ffi.sls ./deps

./raylib.h.ss: $(RAYLIB_HEADER)
	c2ffi -o ./raylib.h.ss \
      	-D sexp \
      	$(RAYLIB_HEADER)

./src/raylib/ffi.sls: ./raylib.h.ss ./generation.ss
	scheme --program ./generation.ss > ./src/raylib/ffi.sls

./deps: project.ss
	chez-pkg i
