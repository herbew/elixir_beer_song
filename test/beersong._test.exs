defmodule BeerSongTest do
    use ExUnit.Case
	test "verse with 1 bottles" do
      assert BeerSong.verse(1) == """
             No more bottles of beer on the wall, no more bottles of beer.
    		 Go to the store and buy some more, 99 bottles of beer on the wall.
             """
    end #test "verse with 1 bottles" do
	
	
	
end