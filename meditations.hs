import Data.Time
import System.IO

time :: UTCTime -> Int
time utc = read (formatTime defaultTimeLocale "%s" utc)

main = do
 contents <- readFile "meditations.txt"
 let splitContent = lines contents
 let size = length splitContent
 currentTime <- getCurrentTime
 let index = ((time currentTime)*100) `mod` size
 print(splitContent !! index)
