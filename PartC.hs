{--
Marcello Cierro
   Assignent #4 Due Friday Dec. 9 2016

   This is a function replace which replaces list items i through j inclusive
   with a replacement list.

   The primary data structures are functions in haskell and global variables.
   Print statements are also present throughout

   Data and input is hard coded

	 No user input

	 Errors are not handled because there should be no errors

   Primary data structures are functions and global variables

   Code Reference:
http://www.cs.oswego.edu/~odendahl/coursework/csc344/201609/assignments/04.html

--}

replace :: [a] -> (Int, Int) -> [a] -> [a]
replace xs (i, j) xy = loc ++ xs ++ repList
    where loc = take i xy
          repList = drop (i+j+1) xy

--Main of program where function replace will be tested on
main = do
    --Original list of integers
    let x_orig = [100,200,300,400,500,600,700]
    --Deines the replacement integers at the given location
    let x_rep = replace [1,2,3] (4,5) x_orig
    --Prints original, with the replaced lists with the new elements
    putStrLn ("Original list: " ++ (show x_orig))
    putStrLn ("Replacement list: " ++ (show x_rep))
    let a = "a vote for me is a vote for the people"
    let b = length a
    let y = replace "big moneyed interests" (b-6,b-1) a
    putStrLn ("Original statement: " ++ a)
    putStrLn ("Replacement statement: " ++ (show y))

    --Adds line(s) which makes formatting nicer
    putStrLn $ " "
    putStrLn $ "Second Example:"
    putStrLn $ " "

    --Second set of an original list of integers
    let y_orig = [11,12,13,14,15,16,17]
    --Sets the replacement integers at the given location
    let y_rep = replace [10,20,30] (4,5) y_orig
    --Prints original and the new replacement lists and line
    putStrLn ("Original list: " ++ (show y_orig))
    putStrLn ("Replacement list: " ++ (show y_rep))
    let c = "I love to eat food and I hate to dance"
    let d = length c
    let e = replace "Oswego finals week" (d-6,d-1) c
    putStrLn ("Original statement: " ++ c)
    putStrLn ("Replacement statement: " ++ (show e))
