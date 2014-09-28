module Abstract.Counter (
 module Abstract.Interfaces.Counter,
 mkCounter
) where

import Abstract.Tools

import Abstract.Interfaces.Counter

import Abstract.Impl.Libs.Counter
import Abstract.Impl.Redis.Counter
import Abstract.Impl.Memcache.Counter

import System.DevUtils.Parser

import System.DevUtils.Base.Url.Redis
import System.DevUtils.Base.Url.Memcache

import qualified Data.ByteString.Char8 as C

mkCounter url = do
 case (runCmd url) of
  (Left err) -> error err
  (Right url') -> mkCounter' url'

mkCounter' url = do
 case url of
  (UrlRedis redis) -> mkCounter'Redis'Int 0 $ counterRedis'Int "counter" $ redis'urlToConnectInfo redis
  (UrlMemcache memcache) -> mkCounter'Memcache'Int 0 $  defaultCounterMemcache'Int "counter"
  (UrlMVar) -> mkCounter'MVar 0
  (UrlIORef) -> mkCounter'IORef 0
  _ -> error "Unsupported url"
