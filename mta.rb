	
n = ["timessquare", "34th","28th","23rd","unionsquare","8th"]
l = ["8th", "6th", "unionsquare","3rd","1st"]
six = ["grandcentral","33rd","28th","23rd","unionsquare","astorplace"]

subway = {:n=>n, :l=> l, :six=>six}


puts "Where would you like to go?"
destination = gets.strip.chomp.downcase.delete(" ")

puts "What line is that on?"
endline = gets.strip.chomp.downcase.delete(" ")




puts "What station will you be departing from?"
location = gets.strip.chomp.downcase.delete(" ")


puts "What line is that on?"
startline = gets.strip.chomp.downcase.delete(" ")
startline.to_sym

if startline == endline
	puts (startline.index(destination)-startline.index(location)).abs
else
	puts "You have #{(subway[startline.to_sym].index(location) - subway[startline.to_sym].index("unionsquare")).abs} stops until transfer"
	puts "After, you have #{(subway[endline.to_sym].index(destination) - subway[endline.to_sym].index("unionsquare")).abs} until your destination"	
end    
