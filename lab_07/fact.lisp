(defun fact(n)
    (_fact n 1)
)

(defun _fact(n mult)
    (cond   
        ((eq n 1) mult)
        ((> n 0) (_fact (- n 1) (* n mult)))
    )
)

;(write (fact 4))

(defun factorial(n)
    (cond   ((eq n 1) n)
            ((> n 1) (* (factorial (- n 1)) n))
    )
)

(write (factorial 3))
