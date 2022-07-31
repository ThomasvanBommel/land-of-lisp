#!/bin/clisp -repl

;; guess-my-number
;; Thomas vanBommel

;; Created: 2022-07-03
;; Modified:
;;   2022-07-30 - Added this header information

(defparameter *small* 1)
(defparameter *big* 100)

(defun println (string)
  (princ string)
  (terpri))

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess-my-number))

(println "Welcome to guess-my-number")
(println "1. Pick a number from 1-100")
(println "2. Type '(guess-my-number)' to start")
(println "3. Type '(bigger)' or '(smaller)' accordingly")
(println "4. Type '(start-over)' to play again")
(println "5. Type '(exit)' to leave the game")

