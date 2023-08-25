defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end  

  def remaining_minutes_in_oven(time) do
    expected_minutes_in_oven - time
  end

  def preparation_time_in_minutes(layers) do
    layers * 2
  end

  def total_time_in_minutes(layers, initTime) do
    initTime + preparation_time_in_minutes(layers)
  end

  def alarm() do
    "Ding!"
  end
end