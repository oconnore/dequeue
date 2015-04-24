module Paths_dequeue (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,5] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\Eric\\dequeue-0.1.5\\.cabal-sandbox\\bin"
libdir     = "C:\\Users\\Eric\\dequeue-0.1.5\\.cabal-sandbox\\x86_64-windows-ghc-7.10.1\\deque_HMtXdfT6bjoJejqAzvz9KH"
datadir    = "C:\\Users\\Eric\\dequeue-0.1.5\\.cabal-sandbox\\x86_64-windows-ghc-7.10.1\\dequeue-0.1.5"
libexecdir = "C:\\Users\\Eric\\dequeue-0.1.5\\.cabal-sandbox\\deque_HMtXdfT6bjoJejqAzvz9KH"
sysconfdir = "C:\\Users\\Eric\\dequeue-0.1.5\\.cabal-sandbox\\etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "dequeue_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "dequeue_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "dequeue_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "dequeue_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "dequeue_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
