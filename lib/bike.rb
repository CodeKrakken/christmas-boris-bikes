class Bike

  def initialize
    @working = true
  end

  def working?
    @working
  end

  def broken
    @working = false
  end

end