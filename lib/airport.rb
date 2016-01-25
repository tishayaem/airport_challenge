require_relative 'plane'

class Airport
attr_accessor :landed_planes
def initialize
  @landed_planes = []
end

def landing plane
landed_planes << plane
'Instructions to land'
  end

  def taking_off plane
   departed_flights = []
   departed_flights << plane
   landed_planes.delete plane
 end
 end
