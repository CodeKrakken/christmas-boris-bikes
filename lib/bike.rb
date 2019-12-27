class Bike
  attr_accessor :working

  def initialize
    @working = fix
  end

  def working?
    @working
  end

  def broken
    @working = false
    "Bike has been reported broken"
  end

  def fix
    @working = true
  end

end