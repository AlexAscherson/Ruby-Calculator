class Apartment

    attr_accessor :number, :price, :occupied, :balcony, :sqft, :bedrooms, :bathrooms, :tenants 
    # allow get and push as a .method

 def initialize (number,price, occupied, balcony, sqft, bedrooms,bathrooms,tenants)
   @number = number
   @price = price
   @occupied = occupied
   @balcony = balcony
   @sqft = sqft
   @bedrooms = bedrooms
   @bathrooms = bathrooms
   @tenants = []
 end
end