require_relative 'repair_shop'

class Van
  attr_reader :bikes
  
  def initialize
    @bikes = []
  end

  def collect(bike, origin)
    fail "Bike not found" unless origin.bikes.include?(bike)
    fail "This bike is in need of repair" if !bike.working? && origin.class == RepairShop
    fail "This bike does not need to be repaired" if bike.working? && origin.class == DockingStation
    @bikes << bike
    origin.bikes.delete(bike)
  end

  def deliver(bike, destination)
    destination.bikes.push(bike)
    @bikes.delete(bike)
  end

end
