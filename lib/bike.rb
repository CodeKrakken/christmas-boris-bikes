class Bike

  def initialize
    @working = true
  end

  def working?
    @working
  end

  def broken
    @working = false
    "Bike has been reported broken"
  end

end