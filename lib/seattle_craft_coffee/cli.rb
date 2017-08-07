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
    SeattleCraftCoffee::Brewers.all
  end

  def menu
    puts "Which Craft Coffee brewer are you interested in? Enter the number:"
    input = gets.to_i
    SeattleCraftCoffee::Brewers.all[input-1]
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
