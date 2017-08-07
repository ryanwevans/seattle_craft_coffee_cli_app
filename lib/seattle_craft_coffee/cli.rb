class SeattleCraftCoffee::Cli

  def call
    greeting
    run_scraper
    list
    menu
    goodbye
  end

  def greeting
    puts "Welcome to Seattle's Top Craft Coffee.  Here are the top craft coffee brewers in Seattle:"
  end

  def run_scraper
    SeattleCraftCoffee::Brewers.add_brewers
  end

  def list
    SeattleCraftCoffee::Brewers.all.each.with_index(1) do |brewer, index|
      puts "#{index}.  #{brewer.name}"
      puts "  Located in #{brewer.neighborhood}"
    end
  end

  def menu
    puts ""
    puts "Which Craft Coffee brewer's description would you like to read? Enter the number or 'exit':"
    input = gets.to_i
    if input < 11 && input > 0
      puts "*** #{SeattleCraftCoffee::Brewers.all[input-1].name} *** "
      puts "-- #{SeattleCraftCoffee::Brewers.all[input-1].description} --"
      sign_off
    elsif input == 0
      goodbye
    else
      invalid_choice
    end
  end

  def invalid_choice
    puts "Sorry that wasn't a valid choice"
    menu
  end

  def sign_off
    puts "Enjoy your craft coffee!  "
  end

  def goodbye
    puts "Goodbye..."
  end

end
