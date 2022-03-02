#lang racket/base

(require graphics/turtles)
(require racket/math)




(define (drawleftsquare size)
  (list (if (> size size-limit) (doleft size) (drawsquare size #t))))

(define (doleft size)
  (list (draw size)
        (turn left-angle)
        (drawleftsquare (* size left-multiplier))
        (turn (- left-angle))
        (turn -90)
        (draw size)
        (turn 90)
        (turn (- right-angle))
        (drawrightsquare (* size right-multiplier))
        (turn right-angle)
        (turn -180)
        (draw size)
        (turn -90)
        (draw size)
        (turn -90)))

(define (drawrightsquare size)
  (list (if (> size size-limit)(doright size) (drawsquare size #f))))

(define (doright size)
  (list 
        (draw size)
        (turn (- right-angle))
        (drawrightsquare (* size right-multiplier))
        (turn right-angle)
        (turn 90)
        (draw size)
        (turn -90)
        (turn left-angle)
        (drawleftsquare (* size left-multiplier))
        (turn (- left-angle))
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
  

(define (drawtree startsize)
  (list center-tree
        (drawleftsquare startsize)
))




;Set the startsize and the left angle of the tree

;Starting size of the tree
(define startsize 100)
;Angle of the left branching square
(define left-angle 20)
;The smallest a square can be for it to be drawn
(define size-limit 10)


;Other variables will be calculated automatically

(define right-angle (- 90 left-angle))
(define left-multiplier (cos (degrees->radians left-angle)))
(define right-multiplier (cos (degrees->radians right-angle)))




(turtles #t)

(drawtree startsize)








