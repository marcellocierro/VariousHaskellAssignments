{-

Marcello Cierro
   Assignent #4 Due Friday Dec. 9 2016

   This program shows an implementation of a function irepeat, which applies a
   function `f' repeatedly to an element in its domain. It is demonstrated by
   showing the function being applied to three functions with different
   signatures.

   The primary data structures are functions in haskell and user inputted data.
   Print statements are also present throughout

   Uses getLines to store temp data.

   User input involves calling a function, entering a sentence and
   specifying a letter to be duplicated.


   Errors are handled with an error message.

   The data included are; user variables, functions, and print lines.

   Code reference from Odendahl
http://www.cs.oswego.edu/~odendahl/coursework/csc344/201609/assignments/04.html


-}

import Data.List
import System.IO
import Data.STRef
import Data.Char

--the main function
dup :: Char -> String -> String
dup c [] = []
dup c (x:xs)
 | c == x    =  x:x:dup c xs
 | otherwise =  x:dup c xs

 --where the magic happens
main = do
 putStrLn "Enter a sentence."

 --saves user inputted data to sentence
 sentence <- getLine
 putStrLn "Which letter to be duplicated"

 --saves user inputted data to letter, the leter to be duped
 letter <- getLine
 if length letter == 1
   then do
     let x = dup (head letter) sentence
     putStrLn x
     else putStrLn "Invalid data entered"
