class SeattleCraftCoffee::Brewers

  attr_accessor :name, :neighborhood, :description
  @@all = []

  def initialize(name, neighborhood, description)
    @name = name
    @neighborhood = neighborhood
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end

  # def self.find_by_neighborhood(neighborhood)
  #   self.all.select { |brewer| brewer.neighborhood == neighborhood }
  # end

end
