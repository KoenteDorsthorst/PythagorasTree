#lang racket/base

(require graphics/turtles)
(require racket/math)




(define (drawleftsquare size la ra lm rm)
  (list (if (> size size-limit) (doleft size la ra lm rm) (drawsquare size #t))))

(define (doleft size la ra lm rm)
  (list (draw size)
        (turn la)
        (drawleftsquare (* size lm) la ra lm rm)
        (turn (- la))
        (turn -90)
        (draw size)
        (turn 90)
        (turn (- ra))
        (drawrightsquare (* size rm) la ra lm rm)
        (turn ra)
        (turn -180)
        (draw size)
        (turn -90)
        (draw size)
        (turn -90)))

(define (drawrightsquare size la ra lm rm)
  (list (if (> size size-limit)(doright size la ra lm rm) (drawsquare size #f))))

(define (doright size la ra lm rm)
  (list 
        (draw size)
        (turn (- ra))
        (drawrightsquare (* size rm) la ra lm rm)
        (turn ra)
        (turn 90)
        (draw size)
        (turn -90)
        (turn la)
        (drawleftsquare (* size lm) la ra lm rm)
        (turn (- la))
        (turn 180)
        (draw size)
        (turn 90)
        (draw size)
        (turn 90)))




(define (drawsquare n isLeft)
  (for ([i 4])
    (draw n)
    (if isLeft (turn -90) (turn 90))))


(define center-tree
  (list (turn -90)
        (move 300)
        (turn 180)))
  

(define (drawtree startsize la ra lm rm)
  (list center-tree
        (drawleftsquare startsize la ra lm rm)
))




;Set the startsize and the left angle of the tree

;Starting size of the tree
(define startsize 100)
;Angle of the left branching square
(define leftangle 20)
;The smallest a square can be for it to be drawn
(define size-limit 10)


;Other variables will be calculated automatically

(define rightangle (- 90 leftangle))
(define leftmultiplier (cos (degrees->radians leftangle)))
(define rightmultiplier (cos (degrees->radians rightangle)))




(turtles #t)

(drawtree startsize leftangle rightangle leftmultiplier rightmultiplier)
#|(drawtree startsize 45 45 (sqrt 2) (sqrt 2))|#
#|(drawtree startsize 14.036 75.964 (/ 8.24621 8) (/ 8.24621 2))|#








