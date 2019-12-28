require './lib/docking_station'
require './lib/bike'
docking_station = DockingStation.new
bike = Bike.new
bike.working?
bike.broken
bike.working?
docking_station.dock(bike)
docking_station
docking_station.release_bike
bike_2 = Bike.new
bike_2.working?
docking_station.dock(bike_2)
docking_station
docking_station.release_bike