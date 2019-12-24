class Van
  attr_reader :bikes
  
  def initialize
    @bikes = []
  end

  def collect(bike, origin)
    fail "This bike does not need to be repaired" if bike.working? # && origin.class == DockingStation
    @bikes << bike
    @bikes.last
  end

end
