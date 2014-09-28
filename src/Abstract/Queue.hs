module Abstract.Queue (
 module Abstract.Interfaces.Queue,
 mkQueue
) where

import Abstract.Tools

import Abstract.Interfaces.Queue

import Abstract.Impl.Libs.Queue
import Abstract.Impl.Redis.Queue

import System.DevUtils.Parser

import System.DevUtils.Base
import System.DevUtils.Base.Url.Redis

import qualified Data.ByteString.Char8 as C

mkQueue url = do
 case (runCmd url) of
  (Left err) -> error err
  (Right url') -> mkQueue' url'

mkQueue' url = do
 case url of
  (UrlRedis redis) -> mkQueue'Redis $ queueRedis "queue" C.pack C.unpack $ redis'urlToConnectInfo redis
  (UrlChan) -> mkQueue'Chan
  _ -> error "Unsupported url"
