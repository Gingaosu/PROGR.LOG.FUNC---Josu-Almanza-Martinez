moduloVect :: (Floating a) => [a] -> a
moduloVect = sqrt . sum . map (^ 2)

main :: IO ()
main = do
  let vector = [5.0, 1.0]
  putStrLn $ "El módulo del vector " ++ show vector ++ " es: " ++ show (moduloVect vector)
