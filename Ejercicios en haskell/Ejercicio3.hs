import Data.Map.Strict (Map, fromListWith)

longitudPalabra :: String -> Map String Int
longitudPalabra = fromListWith max . map (\x -> (x, length x)) . words

main :: IO ()
main = do
  let oracion = "Pedro pecas pica papas"
  print $ longitudPalabra oracion
