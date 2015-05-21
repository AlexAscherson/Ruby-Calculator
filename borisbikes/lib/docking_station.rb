require 'pry'

class Dockingstation
  DEFAULT_CAPACITY = 10 

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
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
    # if the capacity is reached, raise an exception
    raise "Station is full" if full?
    @bikes << bike
  end

  def release bike
    bike = @bikes.pop
    @rented_bikes.push(bike) 
    binding.pry
  end

  def full?
  bike_count == @capacity
  end

  # def return bike
  #   bike = @bikes.pop
  #   @rented_bikes.push(bike) 
  #   binding.pry
  # end

end