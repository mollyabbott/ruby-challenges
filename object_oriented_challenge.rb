class Human

	attr_accessor :name, :parents, :gender, :birthdate
	
end

class Baby < Human

	def cute_baby
		puts "Well #{@parents}, #{@name} is the cutest baby #{@gender} I have ever seen!"
	end

end

my_baby = Baby.new
my_baby.name = 'Winstyn'
my_baby.parents = 'Aaryn and Molly Abbott'
my_baby.birthdate = 'Jan 9th 2017'
my_baby.gender = 'boy'

puts my_baby.cute_baby

