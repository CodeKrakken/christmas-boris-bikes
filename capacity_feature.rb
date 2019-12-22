require './lib/docking_station'
require './lib/bike'
docking_station = DockingStation.new
(docking_station.default_capacity+1).times { docking_station.dock Bike.new }
