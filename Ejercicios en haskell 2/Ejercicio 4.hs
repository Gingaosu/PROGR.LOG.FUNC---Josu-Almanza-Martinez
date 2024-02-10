import Data.Char (toUpper)
import Data.Map.Strict (Map, fromList, mapKeys)

calcularCalificacion :: Int -> String
calcularCalificacion cal
  | cal >= 95 = "Excelente"
  | cal >= 85 = "notable"
  | cal >= 75 = "Bueno"
  | cal >= 70 = "Suficiente"
  | otherwise = "Desempeño insuficiente"

mapearCalificaciones :: Map String Int -> Map String String
mapearCalificaciones = mapKeys (map toUpper) . fmap calcularCalificacion

main :: IO ()
main = do
  let calificaciones = fromList [("Ciencias", 60), ("Algebra", 99), ("Fisica", 88)]
  print $ mapearCalificaciones calificaciones
