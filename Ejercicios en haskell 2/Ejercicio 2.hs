funcionBool :: (Integral a) => a -> Bool
funcionBool n = even n && n < 100

filtraLista :: (a -> Bool) -> [a] -> [a]
filtraLista funcion lista = [x | x <- lista, funcion x]

main :: IO ()
main = print $ filtraLista funcionBool [1,5,9,10,15,20,500]