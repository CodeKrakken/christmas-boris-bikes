 class Van
  attr_reader :bikes
  
  def initialize
    @bikes = []
  end

  def collect(bike, origin)
    fail "Bike not found" unless origin.bikes.include?(bike)
    fail "This bike is in need of repair" if !bike.working? && origin.class == Garage
    fail "This bike does not need to be repaired" if bike.working? && origin.class == DockingStation
    @bikes << bike
    origin.bikes.delete(bike)
  end

  def deliver(bike, destination)
    fail "Bike not found" unless @bikes.include?(bike)
    destination.class == DockingStation ? destination.dock(bike) : destination.bikes.push(bike)
    @bikes.delete(bike)
  end

end
