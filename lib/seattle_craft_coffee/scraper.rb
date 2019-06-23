class SeattleCraftCoffee::Scraper


  def self.scrape_page
    doc = Nokogiri::HTML(open("https://www.thrillist.com/drink/seattle/the-8-best-craft-coffee-shops-in-seattle"))
    doc.css("section.save-venue.saveable-venue.has-spacing.is-standard")
  end

  def self.scrape_brewers
    scrape_page.each do |brewer|
      SeattleCraftCoffee::Brewers.new(
      brewer.css("a.save-venue__link").text,
      brewer.css("h2.save-venue__neighborhood.font--h5").text,
      brewer.css("p.save-venue__description font--body").text
      )
    end
  end

end