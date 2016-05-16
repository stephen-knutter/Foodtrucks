class HoursController < ApplicationController
  before_action :logged_in_user
  before_action :check_user_admin
  
  def new
  end
  
  def create
    #formatted_hours = format_hours(hour_params)
    @hours = Hour.new(hour_params)
    @store = Store.find_by(id: params[:store_id])
    if @hours.save
      flash[:success] = "Hours successfully added" 
    else
      flash[:danger] = "Hours could not be updated"
    end
    redirect_to edit_store_path(@store)
  end
  
  def edit
  end
  
  def update
    @hours = Hour.find_by(store_id: params[:id])
    @store = Store.find_by(id: params[:store_id])
    if @hours.update_attributes(hour_params)
       flash[:success] = "Hours successfully updated"
    else
       flash[:danger] = "Unable to edit hours"
    end
    redirect_to edit_store_path(@store)
  end
  
  private
    def hour_params
      params.permit(:store_id, 
                    :mon_o_hour, :mon_o_min, :mon_o_meridiem, 
                    :mon_c_hour, :mon_c_min, :mon_c_meridiem, :mon_closed, 
                    :tue_o_hour, :tue_o_min, :tue_o_meridiem, 
                    :tue_c_hour, :tue_c_min, :tue_c_meridiem, :tue_closed, 
                    :wed_o_hour, :wed_o_min, :wed_o_meridiem, 
                    :wed_c_hour, :wed_c_min, :wed_c_meridiem, :wed_closed, 
                    :thu_o_hour, :thu_o_min, :thu_o_meridiem, 
                    :thu_c_hour, :thu_o_min, :thu_c_meridiem, :thu_closed, 
                    :fri_o_hour, :fri_o_min, :fri_o_meridiem, 
                    :fri_c_hour, :fri_c_min, :fri_c_meridiem, :fri_closed, 
                    :sat_o_hour, :sat_o_min, :sat_o_meridiem, 
                    :sat_c_hour, :sat_c_min, :sat_c_meridiem, :sat_closed, 
                    :sun_o_hour, :sun_o_min, :sun_o_meridiem, 
                    :sun_c_hour, :sun_c_min, :sun_c_meridiem, :sun_closed
                  )
    end
    
    def format_hours(hours)
      hours[:mon_o_hour] = calculate_time(hours[:mon_o_meridiem],hours[:mon_o_hour])
      hours[:mon_c_hour] = calculate_time(hours[:mon_c_meridiem],hours[:mon_c_hour])
      hours[:tue_o_hour] = calculate_time(hours[:tue_o_meridiem],hours[:tue_o_hour])
      hours[:tue_c_hour] = calculate_time(hours[:tue_c_meridiem],hours[:tue_c_hour])
      hours[:wed_o_hour] = calculate_time(hours[:wed_o_meridiem],hours[:wed_o_hour])
      hours[:wed_c_hour] = calculate_time(hours[:wed_c_meridiem],hours[:wed_c_hour])
      hours[:thu_o_hour] = calculate_time(hours[:thu_o_meridiem],hours[:thu_o_hour])
      hours[:thu_c_hour] = calculate_time(hours[:thu_c_meridiem],hours[:thu_c_hour])
      hours[:fri_o_hour] = calculate_time(hours[:fri_o_meridiem],hours[:fri_o_hour])
      hours[:fri_c_hour] = calculate_time(hours[:fri_c_meridiem],hours[:fri_c_hour])
      hours[:sat_o_hour] = calculate_time(hours[:sat_o_meridiem],hours[:sat_o_hour])
      hours[:sat_c_hour] = calculate_time(hours[:sat_c_meridiem],hours[:sat_c_hour])
      hours[:sun_o_hour] = calculate_time(hours[:sun_o_meridiem],hours[:sun_o_hour])
      hours[:sun_c_hour] = calculate_time(hours[:sun_c_meridiem],hours[:sun_c_hour])
      return hours
    end
    
    def calculate_time(meridiem,hour)
       hour = hour.to_i
       if meridiem == 'pm'
         if hour != 12
           hour += 12
         end
       else
         if hour == 12
           hour = "00"
         end
       end
       return hour
    end

end
