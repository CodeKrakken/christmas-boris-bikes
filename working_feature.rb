require './lib/docking_station'
require './lib/bike'
docking_station = DockingStation.new
bike = Bike.new
bike.working?
docking_station.dock(bike.broken)
docking_station.bikes.last