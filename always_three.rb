def always_three (original_number)
	((((original_number + 5)*2)-4)/2)-original_number
end

puts "Please enter a number"
original_number = gets.to_i
puts "See always " +  always_three(original_number).to_s

