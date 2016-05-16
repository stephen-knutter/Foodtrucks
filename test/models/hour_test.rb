require 'test_helper'

class HourTest < ActiveSupport::TestCase
  def setup
    @hours = Hour.new(store_id: 1,
             mon_o_hour: "12", mon_c_hour: "12", mon_closed: 0, mon_o_min: "00", mon_c_min: "00", mon_o_meridiem: "am", mon_c_meridiem: "am",
             tue_o_hour: "12", tue_c_hour: "12", tue_closed: 0, tue_o_min: "00", tue_c_min: "00", tue_o_meridiem: "am", tue_c_meridiem: "am",
             wed_o_hour: "12", wed_c_hour: "12", wed_closed: 0, wed_o_min: "00", wed_c_min: "00", wed_o_meridiem: "am", wed_c_meridiem: "am",
             thu_o_hour: "12", thu_c_hour: "12", thu_closed: 0, thu_o_min: "00", thu_c_min: "00", thu_o_meridiem: "am", thu_c_meridiem: "am",
             fri_o_hour: "12", fri_c_hour: "12", fri_closed: 0, fri_o_min: "00", fri_c_min: "00", fri_o_meridiem: "am", fri_c_meridiem: "am",
             sat_o_hour: "12", sat_c_hour: "12", sat_closed: 0, sat_o_min: "00", sat_c_min: "00", sat_o_meridiem: "am", sat_c_meridiem: "am",
             sun_o_hour: "12", sun_c_hour: "12", sun_closed: 0, sun_o_min: "00", sun_c_min: "00", sun_o_meridiem: "am", sun_c_meridiem: "am")
  end
  
  test "hours should be valid" do
    assert @hours.valid?
  end
  
end
