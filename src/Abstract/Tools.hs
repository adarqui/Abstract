module Abstract.Tools (
 redis'urlToConnectInfo
) where

import System.DevUtils.Parser
 (runCmd)

import System.DevUtils.Parser.Cmd
 (Cmd(..))

import System.DevUtils.Base.Url.Redis
import System.DevUtils.Base.Url

import qualified System.DevUtils.Redis.Tools as Redis
 (urlToConnectInfo)

redis'urlToConnectInfo redis = Redis.urlToConnectInfo redis
