
require 'tty-prompt'

prompt = TTY::Prompt.new

suits = ['H', 'D', 'S', 'C']

values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]

# puts suits

deck = []

suits.each do |suit|
    values.each do |value|
        deck << "#{value.to_s + suit} "
    end
end


puts deck.shuffle.first(2)

prompt.ask("Would you like to play cards")

