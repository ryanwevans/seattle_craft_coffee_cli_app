class SeattleCraftCoffee::Brewers

  attr_accessor :name, :description
  @@all = []

  def initialize

    @@all << self
  end


end
