module Abstract.Queue.Enq (
 module Abstract.Interfaces.Queue.Enq,
 mkQueue'Enq 
) where

import Abstract.Queue
import Abstract.Interfaces.Queue
import Abstract.Interfaces.Queue.Enq

mkQueue'Enq url = do
 c <- mkQueue url
 return $ queueToEnq c
