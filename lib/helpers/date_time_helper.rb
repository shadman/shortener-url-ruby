module Helper
  class DateTimeHelper
    
    def self.current_datetime
      DateTime.now.in_time_zone(ZONE)
    end



   end
end