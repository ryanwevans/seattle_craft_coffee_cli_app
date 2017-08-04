class SeattleCraftCoffee::Brewers

  def call
    greeting
    menu
    goodbye
  end

  def greeting
    puts "Welcome to Seattle's Top Craft Coffee"
  end

  def menu
    puts "Which Craft Coffee brewer are you interested in? Enter the number:"
    input = gets.to_i
    SeattleCraftCoffee::ScrapeBrewers.scrape_brewer_description(input)
  end

  def invalid_choice
    puts "sorry that wasn't a valid choice"
  end

  def sign_off
    puts "Enjoy your craft coffee!  "
  end

  def goodbye
    puts "Goodbye..."
  end

end
