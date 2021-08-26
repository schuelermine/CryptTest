{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_crypt_test (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/runner/CryptTest/.stack-work/install/x86_64-linux/ba2b6affc4da1a5242ae2160a3542b99e35144c7ea258cde95d80e4173bb768a/8.10.4/bin"
libdir     = "/home/runner/CryptTest/.stack-work/install/x86_64-linux/ba2b6affc4da1a5242ae2160a3542b99e35144c7ea258cde95d80e4173bb768a/8.10.4/lib/x86_64-linux-ghc-8.10.4/crypt-test-0.1.0.0-6EmPOgSWgDi9ZSYYKZqLTV"
dynlibdir  = "/home/runner/CryptTest/.stack-work/install/x86_64-linux/ba2b6affc4da1a5242ae2160a3542b99e35144c7ea258cde95d80e4173bb768a/8.10.4/lib/x86_64-linux-ghc-8.10.4"
datadir    = "/home/runner/CryptTest/.stack-work/install/x86_64-linux/ba2b6affc4da1a5242ae2160a3542b99e35144c7ea258cde95d80e4173bb768a/8.10.4/share/x86_64-linux-ghc-8.10.4/crypt-test-0.1.0.0"
libexecdir = "/home/runner/CryptTest/.stack-work/install/x86_64-linux/ba2b6affc4da1a5242ae2160a3542b99e35144c7ea258cde95d80e4173bb768a/8.10.4/libexec/x86_64-linux-ghc-8.10.4/crypt-test-0.1.0.0"
sysconfdir = "/home/runner/CryptTest/.stack-work/install/x86_64-linux/ba2b6affc4da1a5242ae2160a3542b99e35144c7ea258cde95d80e4173bb768a/8.10.4/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "crypt_test_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "crypt_test_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "crypt_test_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "crypt_test_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "crypt_test_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "crypt_test_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
