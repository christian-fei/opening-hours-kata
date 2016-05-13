defmodule OpeningHoursTest do
  use ExUnit.Case
  doctest OpeningHours

  test "returns true if is open on day" do
    monday = "2016-05-09T12:00:00.000Z"
    assert OpeningHours.is_open_on(monday) == true
  end
end
