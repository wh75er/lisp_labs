(defun fib(n)
    (cond   ((< n 3) 1)
            ((> n 2) (+ (fib(- n 1)) (fib(- n 2))))
    )
)

;(write (fib 6))

(defun fibonachi(n)
    (_fib 1 0 n)
)

(defun _fib(prev sum n)
    (cond   ((eq n 0) sum)
            ((> n 0) (_fib sum (+ sum prev) (- n 1)))
    )
)

(write (fibonachi 5))
