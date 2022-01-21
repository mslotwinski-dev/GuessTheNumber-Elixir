defmodule GuessTheNumber do

  def init do
    IO.puts "Zagrajmy w grę - wylosowałem jakąś liczbę, twoim zadaniem będzie zgadnąć co to za liczba. Mało ekscytujące? No nic nie poradzę, kazdy sie kiedyś uczył. Zaczynaj!"
    r = Enum.random 1..100
    guess r
  end

  def read do
    IO.gets("Wpisz numer: ")
      |> String.trim
      |> String.to_integer
  end

  def guess r do
    n = read()
    case n do
      ^r -> IO.puts "Udało ci się!"
      a when a > r -> IO.puts "Nieststy nie udało się, podana liczba jest za duża. Spróbuj jeszcze raz"
      guess r
      _ -> IO.puts "Nieststy nie udało się, podana liczba jest za mała. Spróbuj jeszcze raz."
      guess r
    end
  end
end

GuessTheNumber.init
