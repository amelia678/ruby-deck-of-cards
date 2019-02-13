
require 'tty-prompt'

prompt = TTY::Prompt.new

suits = ['H', 'D', 'S', 'C']
values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
deck = []

suits.each do |suit|
    values.each do |value|
        deck << "#{value.to_s + suit} "
    end
end

name = prompt.ask('What is your name?')

is_cards = prompt.yes?("Would you like to play cards, #{name}?")
if is_cards
    puts 'Lets play'
    puts 'shuffling deck...'
    puts 'take two cards'
    puts  deck.shuffle.first(2)
else
    puts 'Darn!' 
end




