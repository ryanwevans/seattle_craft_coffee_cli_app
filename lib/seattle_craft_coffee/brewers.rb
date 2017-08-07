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
      self.new(
      #brewer scraping code,
      #description scraping code
      )
    end
  end

  def self.all
    @@all
  end

end
