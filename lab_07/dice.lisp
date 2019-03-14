(setf *random-state* (make-random-state t))

(defun throw_dice()
    (list (+ 1 (random 6)) (+ 1 (random 6)))
)

(defun player_throw(name)
    (setf thrw (throw_dice))
    (print name)
    (princ ": ")
    (write thrw)
    (if (or (equal thrw `(1 1))
        (equal thrw `(6 6))
        )
        (player_throw name)
    )
    thrw
)

(defun dice_sum(thrw)
    (+ (car thrw) (cadr thrw))
)

(defun abs_win(sum)
    (if (or (eq sum 7) (eq sum 11))
        T
        Nil
    )
)

(defun game()
    (setf sum1 (dice_sum (player_throw `Player1)))
    (setf res `(Player1 won!))
    
    (if (not (abs_win sum1))
        (progn   
            (setf sum2 (dice_sum (player_throw `Player2)))
            (if (eq sum1 sum2)
                (game)
                (if (> sum2 sum1)
                    (setf res `(Player2 won!))
                )
            )
        )
        ()
    )
    res
)

(print (game))
