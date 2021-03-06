class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes
  attr_reader :capacity
  attr_reader :broken_bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @broken_bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bike.working? ? @bikes.push(bike) : @broken_bikes.push(bike)
    @bikes.last
  end

  private

  def full?
    (@bikes.count + @broken_bikes.count) >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.count <= 0
  end

end