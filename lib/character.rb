class Character
  attr_reader :name, :actor, :salary

  def initialize(char_params)
    @name = char_params[:name]
    @actor = char_params[:actor]
    @salary = char_params[:salary]
  end

end
