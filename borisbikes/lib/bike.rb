class Bike

  def initialize
    @broken = false

    # the @ means its an instance variable, this means that it only referes to the 
    # one bike thats been created/selected, not all of them
  end

  def broken?
    @broken
  end

  def break
    @broken = true
  end

  def fix
    @broken = false
  end

end
