defmodule OpeningHours do
  @work_days Application.get_env(:opening_hours, :work_days)
  @from Application.get_env(:opening_hours, :from)
  @to Application.get_env(:opening_hours, :to)

  def is_open_on(date) do
    # Regex.named_captures(~r/^(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})T(?<hour>\d{2}):(?<minute>\d{2}):(?<second>\d{2})/g, date)
    # |> values_to_integers
    # |> date_time_captures_to_date_time
  end

  defp values_to_integers keyword_list do
    keyword_list
       |> Enum.map(fn {name, value} ->
       {name, safe_to_integer(value)}
     end)
   end

  defp date_time_captures_to_date_time captures do
     {{captures[:year], captures[:month], captures[:day]}, {captures[:hour], captures[:minute], captures[:second]}}
  end
end
