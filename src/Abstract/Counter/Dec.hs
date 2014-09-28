module Abstract.Counter.Dec (
 module Abstract.Interfaces.Counter.Dec,
 mkCounter'Dec 
) where

import Abstract.Counter
import Abstract.Interfaces.Counter
import Abstract.Interfaces.Counter.Dec

mkCounter'Dec url = do
 c <- mkCounter url
 return $ counterToDec c
