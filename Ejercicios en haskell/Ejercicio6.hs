media :: (Fractional a) => [a] -> a
media md = sum md / fromIntegral (length md)

desviacionEs :: (Floating a) => [a] -> a
desviacionEs md =
  let m = media md
      n = fromIntegral $ length md
      squaredDiffs = map (\x -> (x - m) ^ 2) md
   in sqrt (sum squaredDiffs / n)

valoresAtipicos :: (Floating a, Ord a) => [a] -> [a]
valoresAtipicos muestra = filter (atipico muestra) muestra

atipico :: (Floating a, Ord a) => [a] -> a -> Bool
atipico muestra n =
  let mediaMuestra = media muestra
      desviacion = desviacionEs muestra
      puntuacion = (n - mediaMuestra) / desviacion
   in puntuacion < -3 || puntuacion > 3

main :: IO ()
main = print $ valoresAtipicos [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1000]
