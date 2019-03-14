(defun f1(x lst) 
    (if (null lst)
        lst
        (or (f1 x (cdr lst))
            (if (listp (car lst))
                (f1 x (car lst))
                (if (equal x (car lst))
                    t
                    nil
                )
            )
        )
    )
)

(write (f1 1 (list 9 (list 5 1 2))))
