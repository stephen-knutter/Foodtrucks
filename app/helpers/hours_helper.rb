module HoursHelper
  def abbriviate_day(day)
    new_day = day[0..2]
    new_day = new_day.downcase
    return new_day
  end
end
