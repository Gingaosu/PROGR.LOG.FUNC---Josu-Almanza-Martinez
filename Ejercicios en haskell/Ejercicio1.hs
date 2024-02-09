aplicarDesc :: Float -> Float -> Float
aplicarDesc precio descuento = precio - (precio * descuento / 100)

aplicarIVA :: Float -> Float -> Float
aplicarIVA precio iva = precio + (precio * iva / 100)

precioCesta :: [(Float, Float)] -> (Float -> Float -> Float) -> Float
precioCesta [] _ = 0
precioCesta ((precio, porcentaje) : resto) funcion =
  funcion precio porcentaje + precioCesta resto funcion

main :: IO ()
main = do
  let cesta = [(10, 20), (10, 10), (10, 0)]
  let precioConDesc = precioCesta cesta aplicarDesc
  let precioConIVA = precioCesta cesta aplicarIVA
  putStrLn $ "Precio final con descuento: " ++ show precioConDesc
  putStrLn $ "Precio final con IVA: " ++ show precioConIVA