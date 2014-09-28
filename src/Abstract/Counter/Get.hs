module Abstract.Counter.Get (
 module Abstract.Interfaces.Counter.Get,
 mkCounter'Get 
) where

import Abstract.Counter
import Abstract.Interfaces.Counter
import Abstract.Interfaces.Counter.Get

mkCounter'Get url = do
 c <- mkCounter url
 return $ counterToGet c
