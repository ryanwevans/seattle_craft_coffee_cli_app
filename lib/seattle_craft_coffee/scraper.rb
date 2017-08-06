class SeattleCraftCoffee::Scraper


  def self.scrape_list_of_brewers
    puts "This is creating a list of Seattle Craft Coffee brewers!"
  end

  def self.scrape_brewer_description(input)
    case input
    when 1
      puts "This will be a description of brewer 1"
      SeattleCraftCoffee::Cli.sign_off
    when 2
      puts "This will be a description of brewer 2"
      SeattleCraftCoffee::Cli.sign_off
    when 3
      puts "This will be a description of brewer 3"
      SeattleCraftCoffee::Cli.sign_off
    else
      SeattleCraftCoffee::Cli.invalid_choice
    end
  end

  def self.add_brewers

  end

end
