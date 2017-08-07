class SeattleCraftCoffee::Brewers

  attr_accessor :name, :neighborhood, :description
  @@all = []

  def initialize(name, neighborhood, description)
    @name = name
    @description = description
    @@all << self
  end

  def self.add_brewers
    SeattleCraftCoffee::Scraper.scrape_page.each do |brewer|
      self.new(
      brewer.css("h1 save-venue__title.font--h1").text,
      brewer.css("h2.save-venue__neighborhood.font--h4").text,
      brewer.css("p.save-venue__description.font--body").text
      )
    end
  end

  def self.brewer_name(input)
    all[input-1].name
  end

  def self.brewer_neighborhood(input)
    all[input-1].neighborhood
  end

  def self.brewer_description(input)
    all[input-1].description
  end

  def self.all
    @@all
  end

end
