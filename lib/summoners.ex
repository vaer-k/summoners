defmodule Summoners do
  @moduledoc """
  """
  alias Summoners.RiotApi

  @doc """
  Returns list of names of summoner's teammates from last 5 matches

  ## Examples

      iex> Summoners.summoner("imaqtpi", "NA1)
      :world

  """
  def search_summoner(summoner_name, region) do
    case RiotApi.search_summoner(summoner_name, region) do
      {:ok, {_summoner, teammates}} ->
        Enum.map(teammates, & &1.name)

      error ->
        error
    end
  end
end
