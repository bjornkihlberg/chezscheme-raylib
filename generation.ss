#!chezscheme

(import (chezscheme))

(define-values (struct-definitions
                enum-definitions
                typedef-definitions
                function-definitions)
  (let ([raylib.h.ss '()])
    (load "./raylib.h.ss"
      (lambda (e)
        (let ([e (syntax->datum e)])
          (set! raylib.h.ss (cons e raylib.h.ss)))))
    (assert (for-all pair? raylib.h.ss))
    (for-each (lambda (raylib.h.ss)
                (assert (pair? raylib.h.ss))
                (assert (memq (car raylib.h.ss) '(struct enum typedef function))))
              raylib.h.ss)
    (values (reverse
              (filter
                (lambda (x) (pair? (cdr x)))
                (map
                  (lambda (x)
                    (assert (pair? x))
                    (assert (eq? (car x) 'struct))
                    (cdr x))
                  (filter (lambda (raylib.h.ss) (eq? (car raylib.h.ss) 'struct)) raylib.h.ss))))
            (map cddr (filter (lambda (raylib.h.ss) (eq? (car raylib.h.ss) 'enum)) raylib.h.ss))
            (filter
              (lambda (x/y)
                (not
                  (memq (car x/y)
                        '(SaveFileTextCallback
                          LoadFileTextCallback
                          SaveFileDataCallback
                          LoadFileDataCallback
                          va_list
                          __gnuc_va_list))))
              (map cdr (filter (lambda (raylib.h.ss) (eq? (car raylib.h.ss) 'typedef)) raylib.h.ss)))
            (filter
              (lambda (x)
                (and
                  (not
                    (memq (car x)
                          '(SetSaveFileTextCallback
                            SetLoadFileTextCallback
                            SetSaveFileDataCallback
                            SetLoadFileDataCallback
                            SetTraceLogCallback
                            MemFree
                            MemRealloc
                            MemAlloc)))
                  (let ([s (symbol->string (car x))])
                    (not
                      (and
                        (eq? (string-ref s 0) #\T)
                        (eq? (string-ref s 1) #\e))))))
              (map
                (lambda (x)
                  (let ([x (cdr x)])
                    (assert (string? (car x)))
                    (assert (= (length (cdr x)) 2))
                    (cons* (string->symbol (car x)) (map cadr (cadr x)) (cddr x))))
                (filter (lambda (raylib.h.ss) (and (eq? (car raylib.h.ss) 'function) (= (length raylib.h.ss) 4))) raylib.h.ss))))))

(define-values (function-typedefs
                alias-typedefs
                enum-typedefs
                opaque-typedefs)
  (let*-values ([(function-typedefs typedef-definitions)
                    (partition (lambda (x/y) (eq? (cadr x/y) ':function-pointer)) typedef-definitions)]
                [(alias-typedefs typedef-definitions)
                    (partition (lambda (x/y) (symbol? (cadr x/y))) typedef-definitions)]
                [(enum-typedefs typedef-definitions)
                    (partition (lambda (x/y) (assert (pair? (cadr x/y))) (eq? (caadr x/y) ':enum)) typedef-definitions)]
                [(opaque-typedefs typedef-definitions)
                    (partition (lambda (x/y) (assert (pair? (cadr x/y))) (eq? (caadr x/y) 'struct)) typedef-definitions)])
    (for-each (lambda (x/y) (assert (pair? (cadr x/y)))
                            (assert (eq? (caadr x/y) ':struct)))
              typedef-definitions)
    (values function-typedefs
            (map (lambda (x) (cons (car x) (cadr x))) alias-typedefs)
            (map (lambda (x) (cons (car x) (caddr (cadr x)))) enum-typedefs)
            (map car opaque-typedefs))))

(define read-type
  (case-lambda
    [(t) (read-type t #f)]
    [(t proc-pos)
      (cond [(and (symbol? t) (memq t opaque-typedefs)) t]
            [(and (symbol? t) (assq t struct-definitions))
              (if proc-pos
                  `(& ,t)
                  t)]
            [(and (symbol? t) (assq t alias-typedefs)) =>
              (lambda (t/u)
                (read-type (cdr t/u) proc-pos))]
            [(symbol? t)
              (case t
                [:float 'float]
                [:int 'int]
                [:unsigned-int 'unsigned-int]
                [:unsigned-char 'unsigned-8]
                [:_Bool 'stdbool]
                [:unsigned-short 'unsigned-short]
                [:char 'char]
                [:void 'void]
                [:long 'long]
                [:double 'double]
                [AudioCallback '(* AudioCallback)]
                [else `(unknown-symbol ,t)])]
            [(equal? t '(:pointer :void)) 'void*]
            [(equal? t '(:pointer (:pointer :char))) '(* char*)]
            [(equal? t '(:pointer (:pointer Transform))) '(* Transform*)]
            [(equal? t '(:pointer (:pointer Rectangle))) '(* Rectangle*)]
            [else
              (assert (pair? t))
              (record-case t
                [:pointer (t) `(* ,(read-type t #f))]
                [:array (t n) `(array ,n ,(read-type t #f))]
                [else `(unknown ,t)])])]))

(display "#!chezscheme")
(newline)
(newline)

(display "(library (chezscheme-raylib v5 raylib ffi)")
(newline)

(display "  (export ")

(begin
  (display "; Enum types")
  (for-each (lambda (x) (format #t "\n          ~a" (car x))) enum-typedefs))

(begin
  (newline)
  (newline)
  (display "          ; Enums")
  (for-each
    (lambda (x)
      (for-each
        (lambda (x)
          (format #t "\n          ~a" (car x)))
        (cdr (assert (assq (cdr x) enum-definitions)))))
    enum-typedefs))

(begin
  (newline)
  (newline)
  (display "          ; Opaque types")
  (for-each (lambda (x) (format #t "\n          ~a" x)) opaque-typedefs))

(begin
  (newline)
  (newline)
  (display "          ; Struct types")
  (for-each (lambda (x) (format #t "\n          ~a" (car x))) struct-definitions))

#; (begin
  (newline)
  (newline)
  (display "          ; Type aliases")
  (for-each (lambda (x) (format #t "\n          ~a" (car x))) alias-typedefs))

(begin
  (display "\n\n          ; Callback types")
  (display "\n          AudioCallback"))

(begin
  (display "\n\n          ; Procedure types")
  (for-each (lambda (x) (format #t "\n          ~a" (car x))) function-definitions))
(display ")")

(display "\n\n  (import (chezscheme)")
(display "\n          (chezscheme-ffi v1 ffi))")

(for-each
  (lambda (x)
    (format #t "\n\n  (define-ftype-enum ~a unsigned-32" (car x))
    (for-each
      (lambda (x) (format #t "\n    [~50a ~a]" (car x) (cadr x)))
      (cdr (assert (assq (cdr x) enum-definitions))))
    (display ")"))
  enum-typedefs)

(begin
  (newline)
  (for-each
    (lambda (x)
      (format #t "\n  (define-ftype ~a (struct))" x))
    opaque-typedefs))

(for-each
  (lambda (x)
    (format #t "\n\n  (define-ftype ~a\n" (car x))
    (format #t "    (struct [~25a ~a]" (caadr x) (read-type (cadadr x)))
    (for-each
      (lambda (x)
        (format #t "\n            [~25a ~a" (car x) (read-type (cadr x)))
        (display "]"))
      (cddr x))
    (display "))")
    (when (memq (car x) '(Transform Rectangle))
      (format #t "\n\n  (define-ftype ~a* (* ~a))" (car x) (car x))))
  struct-definitions)

#; (begin
  (newline)
  (for-each
    (lambda (x)
      (format #t "\n  (define-ftype ~a ~a)" (car x) (cdr x)))
    alias-typedefs))

(display "\n\n  (define-ftype AudioCallback (function (void* unsigned-int) void))")

(begin
  (newline)
  (for-each
    (lambda (x)
      (let ([proc-name (car x)]
            [arg-types (map (lambda (x) (read-type x 'arg)) (cadr x))]
            [ret-type (read-type (caddr x) 'ret)])
        (format #t "\n  (define-foreign-procedure ~a ~a ~a)" proc-name arg-types ret-type)))
    function-definitions))

(display "\n\n  (meta-cond")
(display "\n    [(= (optimize-level) 0)")
(for-each
  (lambda (x)
    (format #t "\n      (assert (foreign-entry? \"~a\"))" (car x)))
  function-definitions)
(display "]))")
