# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Time::DATE_FORMATS[:easy_date] = "%B %-dth, %-I:%M %p"
Time::DATE_FORMATS[:time_only] = "%I:%M%p"
