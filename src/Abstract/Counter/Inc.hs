module Abstract.Counter.Inc (
 module Abstract.Interfaces.Counter.Inc,
 mkCounter'Inc 
) where

import Abstract.Counter
import Abstract.Interfaces.Counter
import Abstract.Interfaces.Counter.Inc

mkCounter'Inc url = do
 c <- mkCounter url
 return $ counterToInc c
