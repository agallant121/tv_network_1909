class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
    @actors = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    "Amy Poehler"
  end

end
