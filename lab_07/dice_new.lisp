(setf *random-state* (make-random-state t))

(defun throw_dice()
    (list (+ 1 (random 6)) (+ 1 (random 6)))
)

(defun player_throw(name)
    (let ((thrw (throw_dice)))
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
    (let ((sum1 (dice_sum (player_throw `Player1)))
        (res `(Player1 won!)))
    
    (if (not (abs_win sum1))
        (if (eq sum1 (dice_sum (player_throw `Player2)))
            (game)
            (if (or (> (dice_sum (player_throw `Player2)) sum1) (abs_win (dice_sum (player_throw `Player2))))
                (let ((res `(Player2 won!))))
            )
        )
        ()
    )
    res
    )
)

(time (game))
