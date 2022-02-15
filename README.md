# PythagorasTree

## What is this project?
This project contains racket code that uses the [racket turtle](https://docs.racket-lang.org/racket_turtle/index.html) library.
The code uses functional programming and recursion to draw different pythagoras trees that have different angles.

## How to draw your own tree
The code is here to draw a tree, but what function do you call to make one? What parameters do I have to give this function? All this will be answered below.

The function [draw-custom](https://docs.racket-lang.org/racket_turtle/racket_turtle_functions.html#%28def._%28%28lib._teachpacks%2Fracket-turtle..rkt%29._draw-custom%29%29) can be used to draw the tree. The function requires 4 parameters: The draw commands, screen width, screen height and the turtle speed. width and height can be whatever you want, but I recommend 1000 for both (except if you run the code on a smaller screen). turtle speed should be set to 0 as that makes it draw the fastests.
