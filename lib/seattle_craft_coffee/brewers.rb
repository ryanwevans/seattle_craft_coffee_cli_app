class SeattleCraftCoffee::Brewers

  attr_accessor :name, :neighborhood, :description
  @@all = []

  def initialize(name, neighborhood, description)
    @name = name
    @neighborhood = neighborhood
    @description = description
    @@all << self
  end

  def self.add_brewers
    SeattleCraftCoffee::Scraper.scrape_page.each do |brewer|
      self.new(
      brewer.css("a.save-venue__link").text,
      brewer.css("h2.save-venue__neighborhood.font--h4").text,
      brewer.css("p.save-venue__description.font--body").text
      )
    end
  end

  def self.all
    @@all
  end

end
