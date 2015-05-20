class Building

  attr_accessor :apartments

  def initialize(options = {})

      # using the opinto method means you dont have to get the values in correct order?
    @floors = options[:floors]
    @address = options[:address]
    @num_of_apartments = options[:num_of_apartments]
    @age = options[:age]
    @conciege = options[:conciege]
    @apartments = options[:apartments] || []

  end

end