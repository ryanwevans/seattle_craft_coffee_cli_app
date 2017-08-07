class SeattleCraftCoffee::Brewers

  attr_accessor :name, :description
  @@all = []

  def initialize(name, description)
    @name = name
    @description = description
    @@all << self
  end

  def add_brewers
    SeattleCraftCoffee::Scraper.scrape_list_of_brewers.each do |brewer|
      
    end
  end

end
