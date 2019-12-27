class Garage
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def repair(item)
    item.fix
  end
  
end