# meditations-haskell
A haskell program that outputs a randomly selected line from the Meditations of Marcus Aurelius. 
The line is either randomly selected from the entire book or from the book (chapter) of your choice using a command line argument.

## Dependencies 
I used the [haskell platform](https://www.haskell.org/platform/) which includes many packages and a compiler. 
If you know haskell, you probably already have this.

## Usage
Clone the repository, compile in `ghc`, and run the object file.
If you want to choose a book from which to draw from, add it as an argument.
For example, if you want to see a quote from book twelve:
`./meditations 12`.

## About
I used the [1944 translation by Arthur Spenser Loat Farquharson](https://en.wikisource.org/wiki/The_Meditations_of_the_Emperor_Marcus_Antoninus), which is in the public domain. 
In order to be processed cleanly, I edited the text myself by removing everything except the Aurelius's text, 
numbering every line with a bible-style chapter:line system (including breaking long packages into sub-lines) 
and eliminating all other extraneous text and empty lines.

For random number generation the code pulls from the system time. 
When I learn how to use Monads I will probably change it to use that instead.

