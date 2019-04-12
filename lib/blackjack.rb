def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
 puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
  
end

def initial_round
  deal_card
  deal_card
  card_total = deal_card + deal_card
  display_card_total(card_total)
   return card_total
 
  
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    card_total += deal_card
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  card_total = initial_round
    until card_total > 21
    hit?(card_total)
    display_card_total(card_total)
    end
  end_game(card_total)  
end  
end
    
