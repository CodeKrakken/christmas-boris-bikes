require './lib/docking_station'
require './lib/bike'
docking_station = DockingStation.new
bike = docking_station.release_bike
bike.working?
docking_station.dock(bike)
docking_station.has_bike?