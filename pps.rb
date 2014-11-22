#introduction to the game

puts "Hi there, Do you know the game Paper Rock Scissors ?  "
answer_game = gets.chomp
  if answer_game == "yes"
    puts "Let's play then"
  else
    puts "It's so fun, let's try with me, iam a rookie"
  end

# Fix data for the game
GAME = ["rock", "paper", "scissors"]



loop do 

  # Player choice
  begin
  puts "Please select one of the three option : 'Rock, Paper, Scissors'"
  player_choice = gets.chomp.downcase
  end until GAME.include?(player_choice)

  # Computer choice
  computer_choice = GAME.sample

  # Results of the game
  if computer_choice == player_choice
    puts "It's a tie"
  elsif (player_choice == "paper" && computer_choice == "rock" ) || (player_choice == "scissors" && computer_choice == "paper") || (player_choice == "rock" and computer_choice == "scissors")
    puts "Nice choice, you won"
  else
    puts " The computer won the game "
  end

  # play again ?

  puts "Do you want to play again ?"
  puts "say 'yes' if you want to continue to play"
  break if gets.chomp != "yes"

  


end