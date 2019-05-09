(defun my-reverse(lst)
    (_reverse lst Nil)
)

(defun _reverse(lst ac)
    (if lst
        (_reverse (cdr lst) (cons (car lst) ac)) 
        ac
    )
)

(write (my-reverse `(1 2 3 4 5)))
