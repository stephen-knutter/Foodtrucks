class Hour < ActiveRecord::Base
  belongs_to :store
  validates :mon_o_hour, :mon_c_hour, :mon_o_min, :mon_c_min, :mon_o_meridiem, :mon_c_meridiem, 
            :tue_o_hour, :tue_c_hour, :tue_o_min, :tue_c_min, :tue_o_meridiem, :tue_c_meridiem,
            :wed_o_hour, :wed_c_hour, :wed_o_min, :wed_c_min, :wed_o_meridiem, :wed_c_meridiem,
            :thu_o_hour, :thu_c_hour, :thu_o_min, :thu_c_min, :thu_o_meridiem, :thu_c_meridiem,
            :fri_o_hour, :fri_c_hour, :fri_o_min, :fri_c_min, :fri_o_meridiem, :fri_c_meridiem,
            :sat_o_hour, :sat_c_hour, :sat_o_min, :sat_c_min, :sat_o_meridiem, :sat_c_meridiem,
            :sun_o_hour, :sun_c_hour, :sun_o_min, :sun_c_min, :sun_o_meridiem, :sun_c_meridiem,
            presence: true
end
