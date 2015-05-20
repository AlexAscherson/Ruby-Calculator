class Tenant

  attr_accessor :apartment, :name

  def initialize(options = {})
    @name = options [:name]
    @age = options[:age]
    @sex = options[:sex]
    @apartment = options[:apartment] || nil
  end

end