(defun my-remove-if(func lst)
    (mapcan #'(lambda(x) (cond ((null (funcall func x)) (list x)))) lst)
)

(write (my-remove-if (lambda(x)(> x 3)) `(1 2 (3 4 2 5) 6 7 8)))
