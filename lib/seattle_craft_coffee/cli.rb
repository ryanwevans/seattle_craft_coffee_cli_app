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
    SeattleCraftCoffee::Scraper.scrape_brewers
  end

  def list
    SeattleCraftCoffee::Brewers.all.each.with_index(1) do |brewer, index|
      puts ""
      puts "#{index}.  #{brewer.name}"
      puts "    --Located in #{brewer.neighborhood}"
    end
  end

  def menu
    puts ""
    puts "Which Craft Coffee brewer's description would you like to read? Enter the number or 'exit':"
    input = gets.strip
    if input.to_i.between?(1, 10)
      brewer = SeattleCraftCoffee::Brewers.all[input.to_i-1]
      puts ""
      puts "*** #{brewer.name} *** "
      puts ""
      puts "   #{brewer.description} --"
      puts ""
      puts "Would you like to read about another Seattle Craft Coffee brewer?"
      input = gets.strip.downcase
      if input == "yes" || input == "y"
        menu
      else
        sign_off
      end
    elsif input == "exit"
      puts ""
      puts "Are you sure you would like to exit? Yes/No:"
      input = gets.strip.downcase
      if input == "no" || input == "n"
        menu
      else
        sign_off
      end
    else
      invalid_choice
    end
  end

  def invalid_choice
    puts "Sorry that wasn't a valid choice"
    menu
  end

  def sign_off
    puts ""
    puts "Enjoy your craft coffee!  "
  end

  def goodbye
    puts ""
    puts "Goodbye..."
    puts ""
  end

end
