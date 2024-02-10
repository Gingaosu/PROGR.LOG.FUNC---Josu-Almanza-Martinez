import Control.Monad (forM_)

clasificarCalificacion :: Int -> String
clasificarCalificacion calificacion
  | calificacion >= 95 = "Excelente"
  | calificacion >= 85 = "Notable"
  | calificacion >= 75 = "Bueno"
  | calificacion >= 70 = "Suficiente"
  | otherwise = "Desempeño insuficiente"

main :: IO ()
main = do
  let notas = [100, 95, 85, 80, 75, 70, 65]
  putStrLn "Calificaciones:"
  forM_ notas $ \nota -> putStrLn $ clasificarCalificacion nota
