(module

;;   (memory 1)
;;   (export "memory" (memory 0))
;;   (data (i32.const 8) "hello world\n")

  (func $sub (export "sub") (param f64 f64) (result f64)
    (f64.add
        (local.get 0)
        (local.get 1)
    )
  )

  (func $add (export "main") (param i32 i32) (result i32)
    (i32.add
        (local.get 0)
        (local.get 1)
    )
  )
)

;; (module
;;     (import "js" "memory" (memory 1))
;;     (import "js" "println" (func $println (param i32 i32)))
;;     (data (i32.const 0) "Hello from WebAssembly")
;;     (func (export "writeMessage")
;;         i32.const 0
;;         i32.const 22
;;         call $println
;;     )
;; )

;; (module

;; )