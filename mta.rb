
n = ["timessquare", "34th","28th","23rd","unionsquare","8th"]

puts "Where would you like to go?"
destination = gets.strip.chomp.downcase.delete(" ")

puts "What station will you be departing from?"
location = gets.strip.chomp.downcase.delete(" ")

# puts n.index(destination)
# puts location
# puts destination

puts "You have #{(n.index(destination) - n.index(location)).abs} stops to go"

