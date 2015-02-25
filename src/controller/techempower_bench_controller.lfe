(define-module (techempower_bench_controller req)
    (export all))

(defun json (http_method tokens)
    (tuple 'json '"Hello, World!"))

(defun plaintext (http_method tokens)
    (tuple 'output '"Hello, World!"))