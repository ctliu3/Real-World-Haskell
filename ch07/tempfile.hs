-- file: ch07/tempfile.hs
import System.IO
import System.Directory(getTemporaryDirectory, removeFile)
import System.IO.Error(catch)
import Control.Exception(finally)

main :: IO ()
main = withTempFile "mytemp.txt" myAction

myAction :: FilePath -> Handle -> IO ()
myAction tempname temph =
  do 
    putStrLn "Welcome to tempfile.hs"
    putStrLn $ "I have a temporary file at " ++ tempname

    -- initial position
    pos <- hTell temph
    putStrLn $ "My initial position is " ++ show pos

    let tempdata = show [1..10]
    putStrLn $ "Writing one line contaning " ++
               show (length tempdata) ++ " bytes: " ++
               tempdata

    hPutStr temph tempdata
