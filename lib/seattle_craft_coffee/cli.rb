class SeattleCraftCoffee::Brewers

  def call
    greeting
    list
    menu
    goodbye
  end

  def greeting
    puts "Welcome to Seattle's Top Craft Coffee"
  end

  def list
    SeattleCraftCoffee::ScrapeBrewers.scrape_list_of_brewers
  end

  def menu
    list
    puts "Which Craft Coffee brewer are you interested in? Enter the number:"
    input = gets.to_i
    SeattleCraftCoffee::ScrapeBrewers.scrape_brewer_description(input)
  end

  def self.invalid_choice
    puts "sorry that wasn't a valid choice"
  end

  def self.sign_off
    puts "Enjoy your craft coffee!  "
  end

  def goodbye
    puts "Goodbye..."
  end

end
