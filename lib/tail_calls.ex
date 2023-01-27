defmodule TailCalls do
  @moduledoc """
  Documentation for `TailCalls`.
  """

  @doc """
  Study about recursion and tail call recursion

  ## Examples

      iex> TailCalls.multiply_elements([1, 2])
      2

  """
  def multiply_elements([]), do: 1

  def multiply_elements([hd | tl]) do
    hd * multiply_elements(tl)
  end

  def multiply_elements_tail_call(list), do: do_tail_call(1, list)

  defp do_tail_call(current_val, []), do: current_val

  defp do_tail_call(seed, [head | tail]) do
    (seed * head)
    |> do_tail_call(tail)
  end

  def factorial(0), do: 1

  def factorial(int) do
    int * factorial(int - 1)
  end

  def factorial_tail_call(int), do: do_factorial_tail_call(int, int - 1)

  defp do_factorial_tail_call(result, 0), do: result

  defp do_factorial_tail_call(result, prox) do
    (result * prox) |> do_factorial_tail_call(prox - 1)
  end
end
