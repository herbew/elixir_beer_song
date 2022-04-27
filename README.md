# Elixir Beer Song
Sing a song counting bottles from 99 to 1, until they run out

## Recite the lyrics to that beloved classic, 
## that field-trip favorite: 99 Bottles of Beer on the Wall.

99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.

98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall.

...

1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.

## Test
## $ mix test
Excluding tags: [:pending]
BeerSongTest [test/beersong._test.exs]
  * test verse verse with 2 bottles (excluded) [L#19]
  * test sing all verses (excluded) [L#64]
  * test verse verse with 99 bottles (excluded) [L#26]
  * test sing last three verses (excluded) [L#49]
  * test verse verse with 1 bottles (excluded) [L#12]
  * test sing first two verses (excluded) [L#37]
  * test verse verse with 0 bottles (5.4ms) [L#5]
Finished in 0.1 seconds (0.00s async, 0.1s sync)
7 tests, 0 failures, 6 excluded


## $ mix test --include pending
Including tags: [:pending]
BeerSongTest [test/beersong._test.exs]
  * test verse verse with 2 bottles (2.9ms) [L#19]
  * test verse verse with 1 bottles (0.00ms) [L#12]
  * test verse verse with 99 bottles (0.00ms) [L#26]
  * test sing all verses (6.3ms) [L#64]
  * test sing last three verses (0.02ms) [L#49]
  * test sing first two verses (0.01ms) [L#37]
  * test verse verse with 0 bottles (0.00ms) [L#5]
Finished in 0.07 seconds (0.00s async, 0.07s sync)
7 tests, 0 failures
