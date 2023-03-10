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
    values = ["Ace", "Spades", "King"]
    suits = ["Spades", "Clubs", "Diamonds", "Random"]

    for suit <- suits, value <- values  do
      "#{value} of #{suit}"
    end
  end

  def shuffle(card_deck) do
    Enum.shuffle(card_deck)
  end

 def if_contains?(deck, card) do
   Enum.member?(deck, card)
 end

 def deal(deck, hand_size) do
   Enum.split(deck, hand_size)

 end

 def save(deck, filename) do
   to_binary = :erlang.term_to_binary(deck)
   File.write(filename, to_binary)
 end

 def load(filename) do
{status, binary} = File.read(filename)

case status do
   :ok ->  :erlang.binary_to_term binary
   :error -> "That file does not exist"
end

 end

end
