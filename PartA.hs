{--
Marcello Cierro
   Assignent #4 Due Friday Dec. 9 2016

   This program shows an implementation of a function irepeat, which applies a
   function `f' repeatedly to an element in its domain. It is demonstrated by
   showing the function being applied to three functions with different
   signatures.

   The primary data structures are functions in haskell and user inputted data.
   Print statements are also present throughout

   Uses command line to specify the function applied aswell as number to be
   manipulated

	 User input involves calling a function, as well as specifying numbers.


   Usage Explanation;
   base5addfunct work as follows.
   Will take 2 numbers. First one is multiplied by 5, second one is added to
   the product

   irepeat base5addfunct 2 3
   13 (b/c 5*2=10+3=13)

   base4powerfunct work as follows.
   Will take 2 numbers. First one raises 4 to the power, second one is
   multiplied by the new total.

   irepeatbase4powerfunct 2 3
   48 (b/c 4^2=16*3=48)


   Errors are not handled

   The data included are; user variables, functions, and print lines.

   Code reference from Odendahl
http://www.cs.oswego.edu/~odendahl/coursework/csc344/201609/assignments/04.html

--}

import Prelude hiding (iterate)
-- Applies the signature of signature: a -> a
base5addfunct :: Int -> Int
base5addfunct x = x + 5
-- pass a function to another function
base4powerfunct :: Int -> Int
base4powerfunct x = x * 4
-- iterate
iterate :: (a -> a) -> Int -> [a -> a]
iterate f n = take n (repeat f)
-- apply_n_times
apply_list :: [(a -> a)] -> a -> a
apply_list []     x  = x
apply_list (f:fs) x = apply_list fs (f x)
irepeat f n = apply_list $ iterate f n
main = do let x = irepeat base4powerfunct 2 1
          putStrLn $ show $ x
