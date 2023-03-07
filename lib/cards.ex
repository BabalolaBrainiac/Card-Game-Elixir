defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  def hello do
    :world
  end

  def helloWorld do
    "hi there"
  end

  def create_cards do
    ["Ace", "Spades", "King"]
  end
  
  def shuffle(card_deck)
    Enum.shuffle(card_deck)
  end
  
 def if_contains?(deck, card) do
   Enum.member?(deck, card)

 end
