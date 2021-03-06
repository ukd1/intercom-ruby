module Intercom
  # Our api returns date as unix time stamps. This module helps marshall to and from {Time} objects.
  module UnixTimestampUnwrapper
    def time_at(attribute_name)
      Time.at(@attributes[attribute_name]) if @attributes[attribute_name]
    end

    def set_time_at(attribute_name, time)
      @attributes[attribute_name.to_s] = (time.nil?) ? nil : time.to_i
    end
  end
end
