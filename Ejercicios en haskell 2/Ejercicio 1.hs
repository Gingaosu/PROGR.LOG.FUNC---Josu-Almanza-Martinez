import Prelude hiding (cos, exp, log, sin, tan)
import Prelude qualified as P

sin, cos, tan, exp, log :: Float -> Float
sin = P.sin; cos = P.cos; tan = P.tan; exp = P.exp; log = P.log

funcion :: (Float -> Float) -> Int -> [(Int, Float)]
funcion f n = zip [1 .. n] (map f [1 .. fromIntegral n])

calcular :: IO ()
calcular = do
  putStrLn "Introduce la función a aplicar (sin, cos, tan, exp, log):"
  f <- getLine
  putStrLn "Introduce un entero positivo:"
  n <- readLn :: IO Int
  let resultado = case f of
        "sin" -> funcion sin n
        "cos" -> funcion cos n
        "tan" -> funcion tan n
        "exp" -> funcion exp n
        "log" -> funcion log n
        _ -> []
  if null resultado
    then putStrLn "Función no reconocida"
    else mapM_ (\(i, j) -> putStrLn $ "Numero ingresado: " ++ show i ++ "\nresultadoado de la funcion: " ++ show j) resultado
