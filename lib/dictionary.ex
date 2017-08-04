defmodule Dictionary do

  def random_word do
    word_list()
    |> Enum.random()
  end

  defp word_list do
    src()
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end

  defp src do
    "../assets/words.txt"
  end

end
