aplicaFuncionALista :: (a -> b) -> [a] -> [b]
aplicaFuncionALista _ [] = []
aplicaFuncionALista f (x : xs) = f x : aplicaFuncionALista f xs

cuadrado :: (Num a) => a -> a
cuadrado n = n * n

main :: IO ()
main = print $ aplicaFuncionALista cuadrado [1, 2, 3, 5]
