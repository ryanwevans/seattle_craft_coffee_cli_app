class SeattleCraftCoffee::ScrapeBrewers
  

  def self.scrape_list_of_brewers
    puts "This is creating a list of Seattle Craft Coffee brewers!"
  end

  def self.scrape_brewer_description(input)
    case input
    when 1
      puts "This will be a description of brewer 1"
    when 2
      puts "This will be a description of brewer 2"
    when 3
      puts "This will be a description of brewer 3"
    else
      SeattleCraftCoffee::Brewers.invalid_choice
    end

  end

end
