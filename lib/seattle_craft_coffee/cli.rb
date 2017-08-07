class SeattleCraftCoffee::Cli

  def call
    greeting
    list
    menu
    goodbye
  end

  def greeting
    puts "Welcome to Seattle's Top Craft Coffee.  Here are the top craft coffee brewers in Seattle:"
  end

  def list
    SeattleCraftCoffee::Scraper.scrape_list_of_brewers
  end

  def menu
    puts "Which Craft Coffee brewer are you interested in? Enter the number:"
    input = gets.to_i
    SeattleCraftCoffee::Scraper.scrape_brewer_description(input)
  end

  def self.invalid_choice
    puts "Sorry that wasn't a valid choice"
  end

  def self.sign_off
    puts "Enjoy your craft coffee!  "
  end

  def goodbye
    puts "Goodbye..."
  end

end
