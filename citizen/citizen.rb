class Citizen
  def initialize (first_name, last_name, age)
    @age = age
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
  end

  def can_vote?
    @age >= 18
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end



# Implement a Citizen class with the following API:

# #initialize(first_name, last_name, age)
# #can_vote? (boolean)
# #full_name (String)
