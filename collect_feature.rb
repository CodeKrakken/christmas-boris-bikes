require './lib/docking_station'
require './lib/bike'
require './lib/van'
require './lib/repair_shop'
bike = Bike.new
van = Van.new
docking_station = DockingStation.new
repair_shop = RepairShop.new
van.collect(bike, docking_station)
van.deliver(bike, repair_shop)
van.collect(bike, repair_shop)
van.deliver(bike, docking_station)