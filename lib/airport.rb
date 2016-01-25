require_relative 'plane'
require_relative 'weather'
class Airport
attr_accessor :landed_planes, :weather
def initialize(weather= Weather.new)
  @landed_planes = []
  @weather = weather
end

def landing plane
raise 'No landing permission due to stormy weather!' if @weather.stormy? == true

landed_planes << plane
'Instructions to land'
  end

  def taking_off plane
 raise 'No permission to take off due to stormy weather' if @weather.stormy? == true
   departed_flights = []
   departed_flights << plane
   landed_planes.delete plane
 end
 end
