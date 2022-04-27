defmodule BeerSongTest do
    use ExUnit.Case
    
    describe "verse" do
		test "verse with 0 bottles" do
	      assert BeerSong.verse(0) == \
	      	"No more bottles of beer on the wall, no more bottles of beer.\n" <> \
			"Go to the store and buy some more, 99 bottles of beer on the wall.\n"
	    end #test "verse with 0 bottles" do
	    
	    test "verse with 1 bottles" do
	      assert BeerSong.verse(1) == \
	      	"1 bottle of beer on the wall, 1 bottle of beer.\n" <> \
			"Take it down and pass it around, no more bottles of beer on the wall.\n"
	    end #test "verse with 1 bottles" do
	    
	    test "verse with 2 bottles" do
	      assert BeerSong.verse(2) == \
	      	"2 of beer on the wall, 2 of beer.\n" <> \
			"Take one down and pass it around, 1 of beer on the wall.\n"
	    end #test "verse with 2 bottles" do
	    
	end #describe "verse" do
	
	
end