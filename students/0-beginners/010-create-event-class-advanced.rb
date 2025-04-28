require 'date'

# classes start with a capital letter
class Event
  # defines attributes that can be set and changed
  attr_accessor :name, :start_datetime, :end_datetime, :location_name, :location_address
end

event_instance = Event.new
# prints out an internal reference number
event_instance.inspect

event_instance.name = "Tomorrowland 2025"
event_instance.start_datetime = DateTime.new(2025,07,18,0,0,0)
event_instance.end_datetime = DateTime.new(2025,07,27,23,59,59)
event_instance.location_name = "De Schorre Recreation Ground"
event_instance.location_name = "Boom, Belgium"

