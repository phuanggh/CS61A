(define (ascending? s) 
    ; if s is nil, return true
    ; else compare the first two elements of s
    ; if the first element is greater than the second element, return false
    ; else call ascending? on the rest

    (if (null? s) 
        #t
        (if (> (car s) (cadr s))
            #f
            (ascending? (cdr s))
        )
    )    
)

(define (cadr s) 
  (car (cdr s))
)


(define (my-filter pred s)
    ; if s is nil, return nil
    ; else if pred is true for the first element of s, cons the first element of s to the result of calling my-filter on the rest of s
    ; else call my-filter on the rest of s

    (if (null? s)
        '()
        (if (pred (car s))
            (cons (car s) (my-filter pred (cdr s)))
            (my-filter pred (cdr s))
        )
    )

)

(define (interleave lst1 lst2) 
    ; if lst1 is nil, return lst2
    ; if lst2 is nil, return lst1
    ; else cons the first element of lst1 to the result of calling interleave on lst2 and the rest of lst1

    (if (null? lst1)
        lst2
        (if (null? lst2)
            lst1
            (cons (car lst1) (interleave lst2 (cdr lst1)))
        )
    )
)

(define (no-repeats s)
    ; if s is nil, return nil
    ; else if the first element of s is not in the rest of s, cons the first element of s to the result of calling no-repeats on the rest of s
    ; else call no-repeats on the rest of s

    (if (null? s)
        '()
        (if (not (member (car s) (cdr s)))
            (cons (car s) (no-repeats (cdr s)))
            (no-repeats (cdr s))
        )
    )
)
