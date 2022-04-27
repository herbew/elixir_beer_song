defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t
  def verse(number) do
    bottles = number - 1
    """
    #{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\n
    Take one down and pass it around, #{bottles - 1} bottles of beer on the wall.\n"""
  end
  
  def verse(3) do
    """
    2 bottles of beer on the wall, 2 bottles of beer.
    Take one down and pass it around, 1 bottle of beer on the wall.
    """
  end
  
  def verse(2) do
    """
    1 bottle of beer on the wall, 1 bottle of beer.
    Take it down and pass it around, no more bottles of beer on the wall.
    """
  end
  
  def verse(1) do
    """
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.
    """
  end
  
  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t()) :: String.t()
  def lyrics(range\\99..0) do
    Enum.to_list(range) \
    |> Enum.map(fn n -> verse(n) end)
    |> Enum.join("\n")
  end
end
