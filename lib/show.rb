class Show
  attr_reader :name, :creator, :characters, :total_salary

  def initialize(show_name, creator, characters )
    @name = show_name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.map do |char|
    # require "pry"; binding.pry
      char.salary
    end.sum
  end
end
