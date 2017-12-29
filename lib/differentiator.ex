defmodule Differentiator do

  @doc """
  Builds a polynomial from params.

  ## Examples

      iex> Differentiator.build(["4", "3", "2", "1"])
      "4x^3+3x^2+2x+1"
  """
  def build(params) do
    Enum.map(params, &do_build/1)
    |> Enum.join("+")
  end

  def do_build(param) do
    int = String.to_integer(param)

    power = int - 1

    param <>
    (if power > 0, do: "x", else: "") <>
    (if power > 1, do: "^", else: "") <>
    "#{if power > 1, do: power, else: ""}"
  end

  @doc """
  Mathematical differentiation of polynomials

  ## Examples

      # iex> Differentiator.differentiate("x^2")
      # "2x^1"

      # iex> Differentiator.differentiate("3x^2+x+1")
      # "6x+1"

      # iex> Differentiator.differentiate("3x^2+2x+1")
      # "6x+2"

      # iex> Differentiator.differentiate("4x^3+3x^2+2x+1")
      # "12x^2+6x+2"

      # iex> Differentiator.differentiate("4x^3+3x^2+1")
      # "12x^2+6x"

      # iex> Differentiator.differentiate("4x^3-5x^2+1")
      # "12x^2-10x"
  """
  def differentiate(_params) do
    nil
  end
end
