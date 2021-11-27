# meditations-haskell
haskell program that outputs a randomly selected line from Marcus Aurelis's "Meditations" 

## Dependencies 
I used the [haskell platform](https://www.haskell.org/platform/) which includes many packages and a compiler. If you know haskell, you probably already have this.

## Usage
Clone the repository, compile in `ghc`, and run the object file.

## About
I used the [1944 translation by Arthur Spenser Loat Farquharson](https://en.wikisource.org/wiki/The_Meditations_of_the_Emperor_Marcus_Antoninus), which is in the public domain. In order to be processed cleanly, I edited the text myself by removing everything except the Aurelius's text, numbering every line with a bible-style chapter:line system (including breaking long packages into sub-lines) and eliminating all other extraneous text and empty lines.

For random number generation the code pulls from the system time. When I learn how to use Monads I will probably change it to use that instead.

## TODO
Add a user interface that lets the user select a specific chapter to pull a line from.
