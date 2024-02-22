import Data.Char
import Control.Concurrent.STM (lengthTBQueue)

-- Ejercicio 1
sumarLista :: [Int] -> Int
sumarLista [] = 0
sumarLista (x:xs) = x + sumarLista xs

-- Ejercicio 2
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Ejercicio 3
numerosPares :: Int -> [Int]
numerosPares n = filter even [0,1..n]

-- Ejercicio 4
longitudCadena :: String -> Int
longitudCadena = length

-- Ejercicio 5
reversoLista :: [a] -> [a]
reversoLista = reverse

-- Ejercicio 6
duplicarElementos :: [Int] -> [Int]
duplicarElementos [] = []
duplicarElementos (x:xs) = x : x : duplicarElementos xs

-- Ejercicio 7
filtrarPares :: [Int] -> [Int]
filtrarPares xs = filter even xs

-- Ejercicio 8
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- Ejercicio 9
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

-- Ejercicio 10
esPalindromo :: String -> Bool
esPalindromo palindromo = map toLower palindromo == reverse (map toLower (palindromo))
