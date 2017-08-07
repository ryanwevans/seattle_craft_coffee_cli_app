class SeattleCraftCoffee::Scraper


  def self.scrape_page
    doc = Nokogiri::HTML(open("https://www.thrillist.com/drink/seattle/the-8-best-craft-coffee-shops-in-seattle"))
    doc.css("section.save-venue.saveable-venue.has-spacing.is-standard")
  end


end
