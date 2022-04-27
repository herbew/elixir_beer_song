defmodule BeerSong do
  @doc "Returns verses counting from `from` down to `to` of the beer song."
  def sing(from, to) do
    Enum.reduce(from..to, "", fn(number, song) ->
      song <> verse(number) <> "\n"
    end)
  end
  @doc "Returns verses counting from `from` down to 0 of the beer song."
  def sing(from), do: sing(from, 0)
  @doc """
  Returns the last verse of the beer song.
 
  iex> Beer.verse(0)
  "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  """
  def verse(0) do
    "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
  @doc"""
  Returns the second last verse of the beer song.
 
  iex> Beer.verse(1)
  "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
  """
  def verse(1) do
    "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
  end
  @doc"""
  Returns the nth verse of the beer song.
 
  iex> Beer.verse(99)
  "99 bottles of beer on the wall, 99 bottles of beer.\nTake one down and pass it around, 98 bottles of beer on the wall.\n"
  """
  def verse(amount) do
    "#{amount |> bottles} of beer on the wall, #{amount |> bottles} of beer.\nTake one down and pass it around, #{amount - 1 |> bottles} of beer on the wall.\n"
  end
  defp bottles(1) do
    "1 bottle"
  end
  defp bottles(amount) do
    "#{amount} bottles"
  end
end
