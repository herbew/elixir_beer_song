defmodule BeerSongTest do
    use ExUnit.Case
	test "verse with 0 bottles" do
      assert BeerSong.verse(0) == \
      	"No more bottles of beer on the wall, no more bottles of beer.\n" <> \
		"Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end #test "verse with 0 bottles" do
	
	
	
end