defmodule TripletFinder do
  @count_index 2

  def iterate(list) do
    count = Enum.fetch!(list, @count_index)
    range = (0..(count - 1))

    Enum.reduce(range, [], fn(iteration, acc) ->
      triplet = find_triplet(list, iteration)
      [triplet|acc]
    end)
    |> Enum.reverse()
  end

  def chunk(list) do
    list
    |> Enum.drop((@count_index + 1))
    |> Enum.chunk_every(3)
  end

  defp find_triplet(list, 0) do
    Enum.slice(list, (@count_index + 1), 3)
  end

  defp find_triplet(list, iteration_number) do
    Enum.slice(list, ((iteration_number * 3) + (@count_index + 1)) , 3)
  end
end
