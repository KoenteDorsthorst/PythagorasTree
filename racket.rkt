#lang racket/base


(require teachpacks/racket-turtle)


#|
(define size 100)

(define (square n)
  (list (forward n)
        (turn-right 90)
        (forward n)
        (turn-right 90)
        (forward n)
        (turn-right 90)
        (forward n)
        (turn-right 90)))


(define (topleft n)
  (list (forward n)))

(define rotateleft
  (list (turn-left 45)))




(define (drawloop size dir)
  (list 
        (square size)
        (if (> size 30) 
        (if (= dir 0) (drawleftsquares size) (drawrightsquares size)) drawnothing)
        ))


(define (drawleftsquares size)
  (list (forward size)

        (turn-left 45)

        (drawleftsquare size)

        (turn-right 135)
        (forward size)
        (turn-left 135)
        
        (drawrightsquare size)
        
        (turn-right 135)
        (forward size)
        (turn-right 90)
        (forward size)
        (turn-left 45)
        (forward size)
        (turn-left 180)

      ))

(define (drawrightsquares size)
  (list (forward size)

        (turn-right 45)

        (drawrightsquare size)

        (turn-left 135)
        (forward size)
        (turn-right 90)
        
        (drawleftsquare size)
        
        (turn-left 135)
        (forward size)
        (turn-left 90)
        (forward size)
        (turn-right 45)
        (forward size)
        (turn-right 180)

      ))
                   

(define (drawleftsquare size)
  (list
        (drawloop (/ size (sqrt 2)) 0)))

(define (drawrightsquare size)
  (list 
       

        (drawloop (/ size (sqrt 2)) 1)))


(define drawnothing
  (list (forward 0)))


(define tree
  (list (drawloop 100 0)))



(draw tree)

|#

(define (drawleftsquare size la ra lm rm)
  (list (if (> size 20) (doleft size la ra lm rm) (repeat 4 (drawsquare size #t)))))

(define (doleft size la ra lm rm)
  (list (forward size)
        (turn-left la)
        (drawleftsquare (/ size lm) la ra lm rm)
        (turn-right la)
        (turn-right 90)
        (forward size)
        (turn-left 90)
        (turn-right ra)
        (drawrightsquare (/ size rm) la ra lm rm)
        (turn-left ra)
        (turn-right 180)
        (forward size)
        (turn-right 90)
        (forward size)
        (turn-right 90)))

(define (drawrightsquare size la ra lm rm)
  (list (if (> size 20)(doright size la ra lm rm) (repeat 4 (drawsquare size #f)))))

(define (doright size la ra lm rm)
  (list 
        (forward size)
        (turn-right ra)
        (drawrightsquare (/ size rm) la ra lm rm)
        (turn-left ra)
        (turn-left 90)
        (forward size)
        (turn-right 90)
        (turn-left la)
        (drawleftsquare (/ size lm) la ra lm rm)
        (turn-right la)
        (turn-left 180)
        (forward size)
        (turn-left 90)
        (forward size)
        (turn-left 90)))



(define (drawsquare n isLeft)
  (list
    (forward n)
    (if isLeft (turn-right 90) (turn-left 90))))



(define startsize 100)
(define leftangle 36.87)
(define rightangle 53.13)
(define leftmultiplier (/ 5 4))
(define rightmultiplier (/ 5 3))






(draw-custom (drawleftsquare startsize leftangle rightangle leftmultiplier rightmultiplier) 1000 1000 0)
(draw-custom (drawleftsquare startsize 45 45 (sqrt 2) (sqrt 2)) 1000 1000 0)
(draw-custom (drawleftsquare startsize 14.036 75.964 (/ 8.24621 8) (/ 8.24621 2)) 1000 1000 0)





  

      

