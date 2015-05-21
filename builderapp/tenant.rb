class Tenant

  attr_accessor :name, :age, :sex, :apartment

  def initialize(name, age, sex, apartment)
    @name =  name
    @age = age
    @sex = sex
    @apartment = apartment || nil
  end

end