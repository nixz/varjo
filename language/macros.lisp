;; This software is Copyright (c) 2012 Chris Bagley
;; (techsnuffle<at>gmail<dot>com)
;; Chris Bagley grants you the rights to
;; distribute and use this software as governed
;; by the terms of the Lisp Lesser GNU Public License
;; (http://opensource.franz.com/preamble.html),
;; known as the LLGPL.

(in-package :varjo)

(v-define-compiler-macro :+ (&rest numbers)
  (if (> (length numbers) 2)
      `(%+ ,(first numbers) (+ ,@(rest numbers)))
      `(%+ ,@numbers)))

(v-define-compiler-macro :- (&rest numbers)
  (if (> (length numbers) 2)
      `(%- ,(first numbers) (- ,@(rest numbers)))
      `(%- ,@numbers)))

(v-define-compiler-macro :* (&rest numbers)
  (if (> (length numbers) 2)
      `(%* ,(first numbers) (* ,@(rest numbers)))
      `(%* ,@numbers)))

(v-define-compiler-macro :/ (&rest numbers)
  (if (> (length numbers) 2)
      `(%/ ,(first numbers) (/ ,@(rest numbers)))
      `(%/ ,@numbers)))

(v-define-compiler-macro := (&rest numbers)
  (if (> (length numbers) 2)
      `(%= ,(first numbers) (= ,@(rest numbers)))
      `(%= ,@numbers)))
(v-define-compiler-macro :eql (&rest numbers)
  (if (> (length numbers) 2)
      `(%eql ,(first numbers) (eql ,@(rest numbers)))
      `(%eql ,@numbers)))
(v-define-compiler-macro :equal (&rest numbers)
  (if (> (length numbers) 2)
      `(%equal ,(first numbers) (equal ,@(rest numbers)))
      `(%equal ,@numbers)))

(v-define-compiler-macro :> (&rest numbers)
  (if (> (length numbers) 2)
      `(%> ,(first numbers) (> ,@(rest numbers)))
      `(%> ,@numbers)))
(v-define-compiler-macro :< (&rest numbers)
  (if (> (length numbers) 2)
      `(%< ,(first numbers) (< ,@(rest numbers)))
      `(%< ,@numbers)))
(v-define-compiler-macro :>= (&rest numbers)
  (if (> (length numbers) 2)
      `(%>= ,(first numbers) (>= ,@(rest numbers)))
      `(%>= ,@numbers)))
(v-define-compiler-macro :<= (&rest numbers)
  (if (> (length numbers) 2)
      `(%<= ,(first numbers) (<= ,@(rest numbers)))
      `(%<= ,@numbers)))
