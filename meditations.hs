import System.Environment
import Data.Time
import Data.List
import System.IO

time :: UTCTime -> Int
time utc = read (formatTime defaultTimeLocale "%s" utc)

chapterName [] = ""
chapterName n = if x < 13 && x > 0 then present n else "" where x = read (head n)

present n = (head n) ++ ":"

splitOn n m = [ x | x <- m, isPrefixOf n x]

main = do
 let intro = "Speaketh Marcus Aurelius:"
 args <- getArgs
 let chapter = chapterName args

 contents <- readFile "meditations.txt"
 let splitContent = lines contents
 let sortedContent = splitOn chapter splitContent
 let size = length sortedContent
 currentTime <- getCurrentTime
 let index = ((time currentTime)*100) `mod` size

 print(chapter)
 print(intro)
 print(sortedContent !! index)
