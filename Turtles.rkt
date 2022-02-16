#lang racket/base

(require graphics/turtles)

(turtles #t)


(define (drawleftsquare size la ra lm rm)
  (list (if (> size 20) (doleft size la ra lm rm) (left size))))

(define (doleft size la ra lm rm)
  (list (draw size)
        (turn la)
        (drawleftsquare (/ size lm) la ra lm rm)
        (turn (- la))
        (turn -90)
        (draw size)
        (turn 90)
        (turn (- ra))
        (drawrightsquare (/ size rm) la ra lm rm)
        (turn ra)
        (turn -180)
        (draw size)
        (turn -90)
        (draw size)
        (turn -90)))

(define (drawrightsquare size la ra lm rm)
  (list (if (> size 20)(doright size la ra lm rm) (right size))))

(define (doright size la ra lm rm)
  (list 
        (draw size)
        (turn (- ra))
        (drawrightsquare (/ size rm) la ra lm rm)
        (turn ra)
        (turn 90)
        (draw size)
        (turn -90)
        (turn la)
        (drawleftsquare (/ size lm) la ra lm rm)
        (turn (- la))
        (turn 180)
        (draw size)
        (turn 90)
        (draw size)
        (turn 90)))


(define (left n)
  (list (draw n)
        (turn -90)
        (draw n)
        (turn -90)
        (draw n)
        (turn -90)
        (draw n)
        (turn -90)))

(define (right n)
  (list (draw n)
        (turn 90)
        (draw n)
        (turn 90)
        (draw n)
        (turn 90)
        (draw n)
        (turn 90)))





(define startsize 100)
(define leftangle 36.87)
(define rightangle 53.13)
(define leftmultiplier (/ 5 4))
(define rightmultiplier (/ 5 3))






#|(draw (drawleftsquare startsize leftangle rightangle leftmultiplier rightmultiplier))|#
(draw (drawleftsquare startsize 45 45 (sqrt 2) (sqrt 2)))
(draw (drawleftsquare startsize 14.036 75.964 (/ 8.24621 8) (/ 8.24621 2)))




