(defun f1(lst)
    (if (null lst) 
        lst
        (or (f1 (cdr lst))
            (if (null (cdr lst))
                (car lst)
            )
        )
    )
)

;(write (f1 `(2 5 5)))

(defun f2(lst)
    (car (reverse lst))
)

;(write (f2 `(2 5  5)))

(defun f3(lst)
        (if (null lst)
            lst
            (if (not (null (cdr lst))) 
                (cons (car lst) (f3 (cdr lst)))
            )
        )
)

;(write (f3 `(a b c (d))))

(defun f4(lst)
    (reverse (cdr (reverse lst)))
)

(write (f4 `(a b c (d))))
