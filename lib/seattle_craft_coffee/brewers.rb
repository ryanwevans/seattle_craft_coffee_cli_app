class SeattleCraftCoffee::Brewers

  attr_accessor :name, :description, :neighborhood
  @@all = []

  def initialize(name, description, neighborhood)
    @name = name
    @description = description
    @@all << self
  end

  def add_brewers
    self.scrape_page.each do |brewer|
      self.new(
      brewer.css("h1 save-venue__title.font--h1").text,
      brewer.css("h2.save-venue__neighborhood.font--h4").text,
      brewer.css("p.save-venue__description.font--body").text
      )
    end
  end

  def self.all
    @@all
  end

end
