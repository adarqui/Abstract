module Abstract.Queue.Deq (
 module Abstract.Interfaces.Queue.Deq,
 mkQueue'Deq 
) where

import Abstract.Queue
import Abstract.Interfaces.Queue
import Abstract.Interfaces.Queue.Deq

mkQueue'Deq url = do
 c <- mkQueue url
 return $ queueToDeq c
