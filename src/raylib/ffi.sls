#!chezscheme

(library (chezscheme-raylib v1 raylib ffi)
  (export)

  (import (chezscheme))

  (load-shared-object "libraylib.so"))
