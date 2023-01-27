defmodule TailCallsTest do
  use ExUnit.Case
  doctest TailCalls

  test "multiply elements from list" do
    assert TailCalls.multiply_elements([1, 2]) == 2
  end

  test "returns 1 if list is empty" do
    assert TailCalls.multiply_elements([]) == 1
  end

  test "multiply elements from list tail call" do
    assert TailCalls.multiply_elements([1, 2, 3]) == 6
  end

  test "tail call returns 1 if list is empty" do
    assert TailCalls.multiply_elements_tail_call([]) == 1
  end

  test "factorial of 5 is 120" do
    assert TailCalls.factorial(5) == 120
  end

  test "factorial of 0 is 1" do
    assert TailCalls.factorial(0) == 1
  end

  test "tail call factorial of 5 is 120" do
    assert TailCalls.factorial_tail_call(5) == 120
  end

  test "tail call factorial of 0 is 1" do
    assert TailCalls.factorial_tail_call(0) == 120
  end
end
