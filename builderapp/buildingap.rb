class Building

  attr_accessor :floors, :address, :num_of_apartments, :apartments 

  def initialize(floors,address,num_of_apartments,apartments)

      # using the option method means you dont have to get the values in correct order?
    @floors = floors
    @address = address
    @num_of_apartments = num_of_apartments
    # @age = options[:age]
    # @conciege = options[:conciege]
    @apartments = apartments || []

  end

end