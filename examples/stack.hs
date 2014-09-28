import Abstract.Stack
import System.Environment

main :: IO ()
main = do
 print "stack"
{-
 argv <- getArgs
 case argv of
  (a1:a2:[]) -> runStackTests (read a1 :: Int) (read a2 :: Int)
  _ -> error "usage: ./run-stack-tests <threads> <maxN>"
-}
