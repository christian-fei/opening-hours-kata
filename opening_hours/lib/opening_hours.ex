defmodule OpeningHours do
  @work_days Application.get_env(:opening_hours, :work_days)
  @from Application.get_env(:opening_hours, :from)
  @to Application.get_env(:opening_hours, :to)
  @extract_date ~r/^(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})T(?<hours>\d{2}):(?<minutes>\d{2}):(?<seconds>\d{2})\.(?<millis>\d{3})\w+$/

  def is_open_on(date) do
    parsed_date = Regex.named_captures(@extract_date, date)
                  |> to_date_time

    IO.inspect parsed_date
  end

  defp to_date_time(captures) do
     {{captures["year"], captures["month"], captures["day"]}, {captures["hours"], captures["minutes"], captures["second"]}}
  end
end
