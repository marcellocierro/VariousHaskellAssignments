{-

   Marcello Cierro
   Assignent #4 Due Friday Dec. 9 2016

   This is a function factors which returns a list of the prime factors of a
   given integer.

   The primary data structure is a haskell function which first finds the
   factors of a given number, based on a user inputted number. It then
   parses through the factors to find all the prime numbers and then prints
   them.

   Uses getLine for inputted data

	 User input involves asking for a number to be prime-factorized

	 Errors are not handled

   The data used are temp variables dependant on user input.

   Code Reference:
   Odendahl;
http://www.cs.oswego.edu/~odendahl/coursework/csc344/201609/assignments/04.html

   Stack Overflow;
   http://stackoverflow.com/questions/21276844/prime-factors-in-haskell

-}



--factors a number
factors :: Int -> [Int]
factors n = [x | x <- [1..n], mod n x == 0]
--Idenfifys and saves the prime numbers of the factored given number
primeFactors :: Int -> [Int]
primeFactors n = [x | x <- [1..n], mod n x == 0, isPrime x]
isPrime x = (length (factors x)) == 2
main = do
  --prompts the user for a number
  putStrLn "Enter a number."
  --saves number entered
  number <- getLine
  --function is applied with given number
  let x = primeFactors $ (read number :: Int)
  --prints the prime factors
  print x
