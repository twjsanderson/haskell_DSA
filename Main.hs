main :: IO()
main = do
    let w = whoIsPaying "johnny"
    putStrLn (show w)

    let l = [2, 3, 45, -2, 7]
    let res = fsmallest l
    putStrLn (show res)
    
    let g = greet "john" "john"
    let g2 = greet "john" "james"
    putStrLn(g)
    putStrLn(g2)
    
    let s = stringToArray "Hello my bros"
    putStrLn (show s)
    
    let rev = reverseSeq 5
    putStrLn (show rev)
    
    let c = countSheep 5
    putStrLn c
    
    let ston = stringToNumber "3"
    putStrLn (show ston)
    
    let realSheepTotal = numRealSheep [True, False, True]
    putStrLn (show realSheepTotal)


whoIsPaying :: String -> [String]
whoIsPaying name = if length name <= 2 then [name] else [name, take 2 name]
  
fsmallest :: [Int] -> Int
fsmallest [x] = x
-- fsmallest (first:list) = foldl min first list

-- alternate
fsmallest x = foldl1 min x


greet :: String -> String -> String
greet name owner
  | name == owner = "Hello boss"
  | otherwise = "Hello guest"

stringToArray :: String -> [String]
stringToArray str = words str 

reverseSeq :: Int -> [Int] 
reverseSeq n = reverse [1..n]

countSheep :: Int -> String
countSheep 0 = ""
-- countSheep n = concat (zipWith (\num word -> (show num) ++ word) [1..n] (repeat " sheep..."))

-- altrnate
countSheep n
  | n == 0 = ""
  | otherwise = countSheep (n-1) ++ show n ++ " sheep..." 
  
  
stringToNumber :: String -> Integer
stringToNumber s = read s


-- id is the identiy func, returns whatever its given
numRealSheep :: [Bool] -> Int
numRealSheep s = length (filter id s)




