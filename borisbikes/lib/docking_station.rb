require 'pry'

class Dockingstation

  def initialize 
    @bikes = []
    @rented_bikes = []
  end
 
  def bike_count
    @bikes.count
  end

  def rented_bikes_count
    @rented_bikes.count
  end  

  def dock bike
    @bikes << bike
  end

  def undock bike
    bike = @bikes.pop
    @rented_bikes.push(bike) 
    binding.pry
  end

end