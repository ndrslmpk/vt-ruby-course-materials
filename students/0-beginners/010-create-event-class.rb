# classes start with a capital letter
class Event
  # defines attributes that can be set and changed
  attr_accessor :name, :start_date, :end_date, :location_name, :location_address
end

event_instance = Event.new
# prints out an internal reference number
event_instance.inspect

event_instance.name = "Tomorrowland 2025"
event_instance.start_date = "18.07.2025"
event_instance.end_date = "27.07.2025"

event_instance.location_name = "De Schorre Recreation Ground"
event_instance.location_name = "Boom, Belgium"

print event_instance.name
