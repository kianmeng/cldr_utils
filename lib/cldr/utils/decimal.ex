defmodule Cldr.Decimal do
  # To cater for both Decimal 1.x and 2.x
  if Code.ensure_loaded?(Decimal) && function_exported?(Decimal, :normalize, 1) do
    def reduce(decimal) do
      Decimal.normalize(decimal)
    end
  else
    def reduce(decimal) do
      Decimal.reduce(decimal)
    end
  end

  def compare(decimal1, decimal2) do
    Cldr.Math.decimal_compare(decimal1, decimal2)
  end
end